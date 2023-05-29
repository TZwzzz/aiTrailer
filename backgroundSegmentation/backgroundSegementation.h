#ifndef __BACKGROUNDSEGEMENTATION__H__
#define __BACKGROUNDSEGEMENTATION__H__

#include "readDir.h"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>
#include "picProcess.h"

struct PixelHistory
{
    unsigned char *gray; // 历史灰度值
    unsigned char *IsBG; // 对应灰度值的前景/背景判断，1代表判断为背景，0代表判断为前景
};

int RGBbackground(const char *picPath, const char *picSuffix, int channel, int NumBackground);
int getForegroundMask(std::string picName, cv::Mat &FGMask,
                      int NumBackground, int channel, const float defaultDist2Threshold);

int KNNBackground(const char *picPath, const char *picSuffix, int channel,int NumBackground);
int getKNNForegroundMask(std::string picName,cv::Mat &FGMask_KNN,int channel);


#endif //!__BACKGROUNDSEGEMENTATION__H__