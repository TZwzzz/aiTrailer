#ifndef __PICPROCESS__H__
#define __PICPROCESS__H__

#include <opencv2/opencv.hpp>
#include <iostream>

struct sliderStu
{
    int alpha;
    int beta;
    int gamma;
    cv::Mat image;
    cv::Mat result;
};

/** @brief Del the small connected domains
 *  @param src single channel source Mat
 *  @returns None
 *  @note  None
 */
void rmSmallConnectedDomains(cv::Mat &src);

/** @brief 8-bit 3 channel RGB image to 8-bit 1 channel binary image
 *  @param rgbSrc 8-bit 3 channel RGB image
 *  @param binaryDst 8-bit 1 channel dst image
 *  @returns None
 *  @note  None
 */
void rgbTobinary(cv::Mat &rgbSrc,cv::Mat &binaryDst);

void gammaCorrection(cv::Mat &image,cv::Mat &Dst ,float alpha = 1.0,float beta = 0.0,float gamma = 1.0);

void slider(int, void*);

#endif  //!__PICPROCESS__H__