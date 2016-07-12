/**
 * @function contours.cpp
 * @brief Demo code to find contours in an image, based on https://github.com/Itseez/opencv/blob/master/samples/cpp/tutorial_code/ShapeDescriptors/generalContours_demo1.cpp
 */

#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/xphoto.hpp>
#include <raspicam/raspicam_cv.h>
#include <iostream>
#include <cstdlib>

#include "tcp_server.h"


static cv::Mat src, src_hsv, src_thresh;
static cv::Mat src_gray;
static constexpr int max_thresh {255};
static constexpr int width {320};
static constexpr int height {240};
static cv::RNG rng(54321);


void calc_threshold(int& x, int& y);

/**
 * @function main
 */
int main(int, char**) {
	TCP_Server tcp_server("10003", true);

	raspicam::RaspiCam_Cv camera;
	cv::Mat frame;

	// Set camera params
	camera.set(CV_CAP_PROP_FORMAT, CV_8UC3); // color
	camera.set(CV_CAP_PROP_FRAME_WIDTH, width);
	camera.set(CV_CAP_PROP_FRAME_HEIGHT, height);

	// Open camera
	std::cout << "Opening camera...\n";
	if (! camera.open()) {
		std::cerr << "Error opening camera!\n";
		return EXIT_FAILURE;
	}

	std::cout << "Starting TCP server, waiting for connection..\n";
	if (! tcp_server.init()) {
		std::cerr << "Error init tcp server!\n";
		return EXIT_FAILURE;
	}

	// Create Windows
	cv::namedWindow("Source", cv::WINDOW_AUTOSIZE);
	cv::namedWindow("Thresh", cv::WINDOW_AUTOSIZE);
	cv::namedWindow("Contours", cv::WINDOW_AUTOSIZE);

	cv::moveWindow("Source", 0, 0);
	cv::moveWindow("Thresh", 650, 0);
	cv::moveWindow("Contours", 1300, 0);

	int thresh_h[] {90, 140};
	int thresh_s[] {20, 200};
	int thresh_v[] {180, 255};

	cv::createTrackbar(" H min:", "Thresh", &thresh_h[0], max_thresh, nullptr);
	cv::createTrackbar(" H max:", "Thresh", &thresh_h[1], max_thresh, nullptr);
	cv::createTrackbar(" S min:", "Thresh", &thresh_s[0], max_thresh, nullptr);
	cv::createTrackbar(" S max:", "Thresh", &thresh_s[1], max_thresh, nullptr);
	cv::createTrackbar(" V min:", "Thresh", &thresh_v[0], max_thresh, nullptr);
	cv::createTrackbar(" V max:", "Thresh", &thresh_v[1], max_thresh, nullptr);

	int x = 0, y = 0;

	try {
		while (true) {
			if (! camera.grab()) {
				break;
			}
			camera.retrieve(src);

			cv::xphoto::balanceWhite(src, src, cv::xphoto::WHITE_BALANCE_SIMPLE);

//			cv::Mat lab;
//			cv::cvtColor(src, lab, CV_RGB2Lab);

			imshow("Source", src);

//			// Convert image to gray and blur it
//			cv::cvtColor(src, src_gray, cv::COLOR_BGR2GRAY);
//			cv::blur(src_gray, src_gray, cv::Size(3, 3));

			// Convert the image into an HSV image
			cv::cvtColor(src, src_hsv, CV_RGB2HLS);

//			std::vector<cv::Mat> channels;
//			cv::split(src_hsv, channels);
//			for (auto& c : channels) {
//				//cv::equalizeHist(c, c);
//			}
//			cv::equalizeHist(channels[2], channels[2]);
//			cv::merge(channels, src_hsv);


//			// Extract the L channel
//			std::vector<cv::Mat> lab_planes(3);
//			cv::split(lab, lab_planes); // now we have the L image in lab_planes[0]
//
//			// apply the CLAHE algorithm to the L channel
//			cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE();
//			clahe->setClipLimit(4);
//			cv::Mat dst;
//			clahe->apply(lab_planes[0], dst);
//
//			// Merge the the color planes back into an Lab image
//			dst.copyTo(lab_planes[0]);
//			cv::merge(lab_planes, lab);
//
//			// convert back to RGB
//			cv::Mat image_clahe;
//			cv::cvtColor(lab, image_clahe, CV_Lab2RGB);
//
//			imshow("Thresh", image_clahe);
//			cv::cvtColor(image_clahe, src_hsv, CV_RGB2HSV);
		//	imshow("Source", src_hsv);


			// Values 20,100,100 to 30,255,255 working perfect for yellow at around 6pm
			cv::inRange(src_hsv, cv::Scalar(thresh_h[0], thresh_s[0], thresh_v[0]), cv::Scalar(thresh_h[1], thresh_s[1], thresh_v[1]), src_thresh);

			// morphological opening (remove small objects from the foreground)
			cv::erode(src_thresh, src_thresh, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(10, 10)));
			cv::dilate(src_thresh, src_thresh, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(10, 10)));

			// morphological closing (fill small holes in the foreground)
			cv::dilate(src_thresh, src_thresh, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(10, 10)));
			cv::erode(src_thresh, src_thresh, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(10, 10)));

			imshow("Thresh", src_thresh);

			calc_threshold(x, y);

			if (tcp_server.get_ready()) {
				try {
					int pos[2] { x, y };
					tcp_server.send(pos, sizeof(pos));
				} catch (const std::exception& e) {
					std::cerr << "Exception: \"" << e.what() << "\"\n";
					return EXIT_FAILURE;
				}
			}


			if (cv::waitKey(30) == 'q') {
				break;
			}
		}
	} catch (const std::exception& e) {
		std::cerr << "main(): Exception: \"" << e.what() << "\"\n";
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
}

/**
 * @function calc_threshold
 */
void calc_threshold(int& x, int& y) {
	static std::vector<cv::Scalar> colors;
	static int posX {0};
	static int posY {0};
	static cv::Mat movements {cv::Mat::zeros(src_thresh.size(), CV_8UC3)};

//	cv::Mat threshold_output;
	std::vector<std::vector<cv::Point>> contours;
	std::vector<cv::Vec4i> hierarchy;

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
	size_t j(0);
	for (size_t i(0); i < contours.size(); ++i) {
		if (boundRect[i].area() > 300) {
//			std::cout << "boundRect[i].area()=" << boundRect[i].area() << "\n";
			if (colors.size() <= j) {
				colors.push_back(cv::Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255)));
			}
			cv::drawContours(drawing, contours_poly, static_cast<int>(i), colors[j], 1, 8, std::vector<cv::Vec4i>(), 0, cv::Point());
			cv::rectangle(drawing, boundRect[i].tl(), boundRect[i].br(), colors[j], 2, 8, 0);
			cv::circle(drawing, center[i], static_cast<int>(radius[i]), colors[j], 2, 8, 0);
			++j;
		}
	}
	if (j) {
		size_t max(0);
		if (j > 1) {
			for (auto i(0); i < boundRect.size(); ++i) {
				if (boundRect[i].area() > boundRect[max].area()) {
					max = i;
				}
			}
		}

		x = boundRect[max].x + boundRect[max].width / 2;
		y = boundRect[max].y + boundRect[max].height / 2;

		if (x > 0 && y > 0 && posX > 0 && posY > 0) {
			// Draw a yellow line from the previous point to the current point
			cv::line(movements, cv::Point(x, y), cvPoint(posX, posY), cv::Scalar(0, 255, 255), 3);
			cv::add(drawing, movements, drawing);
			std::cout << "x=" << x << "\ty=" << y << std::endl;
		}

		posX = x;
		posY = y;
	}

	// Show drawings in a window
	cv::imshow("Contours", drawing);
}
