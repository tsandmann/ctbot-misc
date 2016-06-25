/**
 * @function contours.cpp
 * @brief Demo code to find contours in an image, based on https://github.com/Itseez/opencv/blob/master/samples/cpp/tutorial_code/ShapeDescriptors/generalContours_demo1.cpp
 */

#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <raspicam/raspicam_cv.h>
#include <iostream>
#include <cstdlib>


static cv::Mat src, src_hsv, src_thresh;
static cv::Mat src_gray;
static constexpr int max_thresh {255};
static cv::RNG rng(54321);


void calc_threshold();

/**
 * @function main
 */
int main(int, char**) {
	raspicam::RaspiCam_Cv camera;
	cv::Mat frame;

	// Set camera params
	camera.set(CV_CAP_PROP_FORMAT, CV_8UC3); // color
	camera.set(CV_CAP_PROP_FRAME_WIDTH, 640);
	camera.set(CV_CAP_PROP_FRAME_HEIGHT, 480);

	// Open camera
	std::cout << "Opening camera...\n";
	if (! camera.open()) {
		std::cerr << "Error opening camera!\n";
		return -1;
	}

	// Create Windows
	cv::namedWindow("Source", cv::WINDOW_AUTOSIZE);
	cv::namedWindow("Thresh", cv::WINDOW_AUTOSIZE);
	cv::namedWindow("Contours", cv::WINDOW_AUTOSIZE);

	cv::moveWindow("Source", 0, 0);
	cv::moveWindow("Thresh", 650, 0);
	cv::moveWindow("Contours", 1300, 0);

	int thresh_h[] {0, 18};
	int thresh_s[] {190, 255};
	int thresh_v[] {184, 255};

	cv::createTrackbar(" H min:", "Source", &thresh_h[0], max_thresh, nullptr);
	cv::createTrackbar(" H max:", "Source", &thresh_h[1], max_thresh, nullptr);
	cv::createTrackbar(" S min:", "Source", &thresh_s[0], max_thresh, nullptr);
	cv::createTrackbar(" S max:", "Source", &thresh_s[1], max_thresh, nullptr);
	cv::createTrackbar(" V min:", "Source", &thresh_v[0], max_thresh, nullptr);
	cv::createTrackbar(" V max:", "Source", &thresh_v[1], max_thresh, nullptr);


	while (true) {
		if (! camera.grab()) {
			break;
		}
		camera.retrieve(src);

//		// Convert image to gray and blur it
//		cv::cvtColor(src, src_gray, cv::COLOR_BGR2GRAY);
//		cv::blur(src_gray, src_gray, cv::Size(3, 3));

		// Convert the image into an HSV image
		cv::cvtColor(src, src_hsv, CV_BGR2HSV);

		// Values 20,100,100 to 30,255,255 working perfect for yellow at around 6pm
		cv::inRange(src_hsv, cv::Scalar(thresh_h[0], thresh_s[0], thresh_v[0]), cv::Scalar(thresh_h[1], thresh_s[1], thresh_v[1]), src_thresh);


		// Show images in a window
		imshow("Source", src);
		imshow("Thresh", src_thresh);

		calc_threshold();

		cv::waitKey(30);
	}

	return 0;
}

/**
 * @function calc_threshold
 */
void calc_threshold() {
	static std::vector<cv::Scalar> colors;

//	cv::Mat threshold_output;
	std::vector<std::vector<cv::Point>> contours;
	std::vector<cv::Vec4i> hierarchy;

	// Detect edges using Threshold
//	cv::threshold(src_gray, threshold_output, thresh, 255, cv::THRESH_BINARY);

	// Find contours
//	cv::findContours(threshold_output, contours, hierarchy, cv::RETR_TREE, cv::CHAIN_APPROX_SIMPLE, cv::Point(0, 0));
	cv::findContours(src_thresh, contours, hierarchy, cv::RETR_TREE, cv::CHAIN_APPROX_SIMPLE, cv::Point(0, 0));

	// Approximate contours to polygons + get bounding rects and circles
	std::vector<std::vector<cv::Point>> contours_poly(contours.size());
	std::vector<cv::Rect> boundRect(contours.size());
	std::vector<cv::Point2f> center(contours.size());
	std::vector<float> radius(contours.size());

	for (size_t i(0); i < contours.size(); ++i) {
		approxPolyDP(cv::Mat(contours[i]), contours_poly[i], 3, true);
		boundRect[i] = boundingRect(cv::Mat(contours_poly[i]));
		minEnclosingCircle(contours_poly[i], center[i], radius[i]);
	}

	// Draw polygonal contour + bonding rects + circles
	cv::Mat drawing(cv::Mat::zeros(src_thresh.size(), CV_8UC3));
	for (size_t i(0); i < contours.size(); ++i) {
		if (boundRect[i].area() > 200) {
			std::cout << "boundRect[i].area()=" << boundRect[i].area() << "\n";
			if (colors.size() <= i) {
				colors.push_back(cv::Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255)));
			}
			cv::drawContours(drawing, contours_poly, static_cast<int>(i), colors[i], 1, 8, std::vector<cv::Vec4i>(), 0, cv::Point());
			cv::rectangle(drawing, boundRect[i].tl(), boundRect[i].br(), colors[i], 2, 8, 0);
			cv::circle(drawing, center[i], static_cast<int>(radius[i]), colors[i], 2, 8, 0);
		}
	}

	// Show drawings in a window
	cv::imshow("Contours", drawing);
}
