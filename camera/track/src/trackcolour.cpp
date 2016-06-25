#include <raspicam/raspicam_cv.h>
#include <opencv2/opencv.hpp>
#include <iostream>

IplImage* GetThresholdedImage(IplImage* img, const int* h_thresh, const int* s_thresh, const int* v_thresh) {
	static IplImage* imgHSV = cvCreateImage(cvGetSize(img), 8, 3);
	static IplImage* imgThreshed = cvCreateImage(cvGetSize(img), 8, 1);
	
	// Convert the image into an HSV image
	cvCvtColor(img, imgHSV, CV_BGR2HSV);
	
//	cvShowImage("thresh", imgHSV);

	// Values 20,100,100 to 30,255,255 working perfect for yellow at around 6pm
	cvInRangeS(imgHSV, cvScalar(h_thresh[0], s_thresh[0], v_thresh[0]), cvScalar(h_thresh[1], s_thresh[1], v_thresh[1]), imgThreshed);

//	cvReleaseImage(&imgHSV);

	return imgThreshed;
}

int main() {
	raspicam::RaspiCam_Cv Camera; // Camera Object
	cv::Mat frame;
		 
	// Set camera params
	Camera.set(CV_CAP_PROP_FORMAT, CV_8UC3); // For color
	Camera.set(CV_CAP_PROP_FRAME_WIDTH, 640);
	Camera.set(CV_CAP_PROP_FRAME_HEIGHT, 480);

	// Open camera
    std::cout << "Opening camera...\n";
    if (! Camera.open()) {
    	std::cerr << "Error opening camera!\n"; 
    	return -1; 
    }
	
	
	// The two windows we'll be using
    cvNamedWindow("video");
	cvNamedWindow("thresh");
	
	cvMoveWindow("video", 0, 0);
	cvMoveWindow("thresh", 650, 0);

	int thresh_h[] {0, 18};
	int thresh_s[] {160, 255};
	int thresh_v[] {144, 255};
	const int max_thresh(255);

	cv::createTrackbar(" H min:", "thresh", &thresh_h[0], max_thresh, nullptr);
	cv::createTrackbar(" H max:", "thresh", &thresh_h[1], max_thresh, nullptr);
	cv::createTrackbar(" S min:", "thresh", &thresh_s[0], max_thresh, nullptr);
	cv::createTrackbar(" S max:", "thresh", &thresh_s[1], max_thresh, nullptr);
	cv::createTrackbar(" V min:", "thresh", &thresh_v[0], max_thresh, nullptr);
	cv::createTrackbar(" V max:", "thresh", &thresh_v[1], max_thresh, nullptr);

	// This image holds the "scribble" data, the tracked positions of the ball
	IplImage* imgScribble = NULL;
	
	cv::Mat frame_mat;

	while (true) {
		if (! Camera.grab()) {
			break;
		}
		Camera.retrieve(frame_mat);
		
		// Will hold a frame captured from the camera
		IplImage frame = frame_mat;
		
		// If this is the first frame, we need to initialize it
		if (imgScribble == NULL) {
			imgScribble = cvCreateImage(cvGetSize(&frame), 8, 3);
		}
		
		// Holds the yellow thresholded image (yellow = white, rest = black)
		IplImage* imgYellowThresh = GetThresholdedImage(&frame, thresh_h, thresh_s, thresh_v);

		// Calculate the moments to estimate the position of the ball
		CvMoments moments;
		cvMoments(imgYellowThresh, &moments, 1);

		// The actual moment values
		double moment10 = cvGetSpatialMoment(&moments, 1, 0);
		double moment01 = cvGetSpatialMoment(&moments, 0, 1);
		double area = cvGetCentralMoment(&moments, 0, 0);

		// Holding the last and current ball positions
		static int posX = 0;
		static int posY = 0;

		int lastX = posX;
		int lastY = posY;

		posX = moment10 / area;
		posY = moment01 / area;

		// Print it out for debugging purposes
		printf("position (%d,%d)\n", posX, posY);

		// We want to draw a line only if its a valid position
		if (lastX > 0 && lastY > 0 && posX > 0 && posY > 0) {
			// Draw a yellow line from the previous point to the current point
			cvLine(imgScribble, cvPoint(posX, posY), cvPoint(lastX, lastY), cvScalar(0,255,255), 5);
		}

		// Add the scribbling image and the frame... and we get a combination of the two
		cvAdd(&frame, imgScribble, &frame);
		cvShowImage("video", &frame);
//		cvShowImage("video", imgScribble);
		cvShowImage("thresh", imgYellowThresh);

		// Wait for a keypress
		int c = cvWaitKey(10);
		if (c != -1) {
			// If pressed, break out of the loop
            break;
		}
    }

    return 0;
}
