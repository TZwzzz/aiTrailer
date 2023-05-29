#include "main.h"

using namespace cv;
using namespace std;
 
const int HISTORY_NUM = 2;// 历史信息帧数
const float defaultDist2Threshold = 100.0f;// 灰度聚类阈值



int main()
{
	cv::Mat image,result;
    RGBbackground("../background",".jpg",3,HISTORY_NUM);//历史对比法记录背景
    KNNBackground("../background",".jpg",3,HISTORY_NUM);//KNN聚类法记录背景
	vector<string> imageNames_foreground = getFilesWithSuffix("../foreground",".jpg");//找到目录下的图片文件
    // 使用迭代器遍历vector
    for (vector<string>::iterator imageName = imageNames_foreground.begin(); imageName != imageNames_foreground.end(); imageName++)
    {
        if ((image = imread(*imageName)).empty())
        {
            cout << "imread failed" << endl;
            exit(EXIT_FAILURE);
        }
        //创建三通道掩码图像
        Mat FGMask(image.rows, image.cols,CV_8UC3);
        Mat FGMask_KNN(image.rows, image.cols,CV_8UC3);
        getForegroundMask(*imageName,FGMask,HISTORY_NUM,3,defaultDist2Threshold);//历史对比法得到前景掩码
        getKNNForegroundMask(*imageName,FGMask_KNN,3);//KNN聚类法得到前景掩码
        rgbTobinary(FGMask,FGMask);
        rgbTobinary(FGMask_KNN,FGMask_KNN);
        rmSmallConnectedDomains(FGMask);
        rmSmallConnectedDomains(FGMask_KNN);
        // bitwise_or(FGMask_KNN,FGMask,result);
		imshow("image", image);
		imshow("FGMask", FGMask);
        imshow("FGMask_KNN", FGMask_KNN);
        // imshow("result", result);
        if(27 == waitKey(0))
        {
            break;
        }
    }
 
	return 0;
 
}