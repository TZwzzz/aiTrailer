#include "picProcess.h"

using namespace cv;
using namespace std;

sliderStu sliderstu = {6,10,4};;

void rmSmallConnectedDomains(Mat &src)
{
    cv::Mat kernel_m = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3));
    cv::morphologyEx(src, src, cv::MORPH_CLOSE, kernel_m);

    // 对二值图像进行轮廓检测
    vector<vector<Point>> contours;
    vector<Vec4i> hierarchy;
    findContours(src, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE);

    // 设置面积阈值
    int minArea = 500;

    // 创建掩码图像
    Mat mask = Mat::zeros(src.size(), CV_8UC1);

    // 遍历所有的轮廓,保留较大的轮廓
    for (int i = 0; i < contours.size(); i++)
    {
        double area = contourArea(contours[i]);
        if (area > minArea)
            drawContours(mask, contours, i, Scalar(255), -1);
    }

    // 对mask图像进行膨胀
    Mat kernel = getStructuringElement(MORPH_RECT, Size(3, 3));
    cv::dilate(mask, mask, kernel);
    // 对原图像与掩码进行位与操作
    cv::bitwise_and(src, mask, src);
}

void rgbTobinary(Mat &rgbSrc,Mat &binaryDst)
{
    cvtColor(rgbSrc, binaryDst,COLOR_BGR2GRAY);
    threshold(binaryDst,binaryDst,0,255,THRESH_BINARY);
}

void gammaCorrection(cv::Mat &image,cv::Mat &Dst ,float alpha,float beta,float gamma)
{
    image.convertTo(Dst,-1,alpha,beta);
    // 构建查找表
	Mat lookUpTable(1, 256, CV_8U);
	uchar* p = lookUpTable.ptr();
	for (int i = 0; i < 256; ++i)
    {
        p[i] = saturate_cast<uchar>(pow(i / 255.0, gamma) * 255.0);
    }
	LUT(Dst, lookUpTable, Dst);
}

void slider(int, void*)
{
    float alpha = sliderstu.alpha / 2.0; // 将对比度参数的数值转化为浮点型
    float beta = sliderstu.beta; // 将亮度参数的数值转化为整型，同时进行偏移
    float gamma = sliderstu.gamma / 4.0; // 将 gamma 参数的数值转化为浮点型

    gammaCorrection(sliderstu.image,sliderstu.result,alpha,beta,gamma);
    // 显示调整后的图像
    imshow("copy", sliderstu.result);

    // 显示参数的数值
    cout << "Alpha: " << alpha << ", Beta: " << beta << ", Gamma: " << gamma << endl;
}