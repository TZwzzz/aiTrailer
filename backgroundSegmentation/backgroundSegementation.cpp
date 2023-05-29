#include "backgroundSegementation.h"

using namespace cv;
using namespace std;

PixelHistory *imagePixelHistory = NULL;// 记录一帧图像中每个像素点的历史信息
Ptr<BackgroundSubtractorKNN> pBackgroundKnn[3];

int RGBbackground(const char *picPath, const char *picSuffix, int channel,int NumBackground)
{
    int imageCnt = 0;
    int rows = 0, cols = 0;
    Mat image;
    bool InitFlag = false;
    vector<string> imageNames = getFilesWithSuffix(picPath, picSuffix);
    // 使用迭代器遍历vector
    for (vector<string>::iterator imageName = imageNames.begin(); imageName != imageNames.end(); imageName++)
    {
        // 读取背景图
        if ((image = imread(*imageName)).empty())
        {
            cout << "imread failed" << endl;
            exit(EXIT_FAILURE);
        }
        //gammaCorrection(image,image,1,0,1.25);
        // 定义三个Mat变量，分别用于存储3个通道的像素值
        cv::Mat Channel[3];
        // 使用extractChannel函数提取蓝色通道，通道编号为0
        cv::extractChannel(image, Channel[0], 0);
        // 使用extractChannel函数提取绿色通道，通道编号为1
        cv::extractChannel(image, Channel[1], 1);
        // 使用extractChannel函数提取红色通道，通道编号为2
        cv::extractChannel(image, Channel[2], 2);

        if (!InitFlag)
        {
            rows = image.rows;
			cols = image.cols;
            // imagePixelHistory分配空间
            imagePixelHistory = (PixelHistory *)malloc(rows * cols * sizeof(PixelHistory));
            for (int i = 0; i < rows * cols; i++)
            {
                for(int j = 0;j < channel;j++)
                {
                    //给历史背景的每一个像素的每一个通道分配空间
                    imagePixelHistory[i].gray = (unsigned char *)malloc(channel * NumBackground * sizeof(unsigned char));
                    imagePixelHistory[i].IsBG = (unsigned char *)malloc(channel * NumBackground * sizeof(unsigned char));
                    memset(imagePixelHistory[i].gray, 0, channel * NumBackground * sizeof(unsigned char));
                    memset(imagePixelHistory[i].IsBG, 0, channel * NumBackground * sizeof(unsigned char));
                }
            }

            InitFlag = true;
        }
        if (InitFlag)
        {
            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    for(int k = 0;k < channel;k++)
                    {
                        int gray = Channel[k].at<unsigned char>(i, j);
                        // 更新历史值
                        int index = imageCnt % NumBackground;
                        imagePixelHistory[i * cols + j].gray[index*channel+k] = gray;
                        imagePixelHistory[i * cols + j].IsBG[index*channel+k] = 1; // 当前点作为背景点存入历史信息
                    }
                }
            }
        }
        imageCnt++;
    }
}

int getForegroundMask(std::string picName,Mat &FGMask,
    int NumBackground,int channel,const float defaultDist2Threshold)
{
    Mat image;
    if ((image = imread(picName)).empty())
    {
        cout << "imread failed" << endl;
        exit(EXIT_FAILURE);
    }
    //gammaCorrection(image,image,1,0,1.25);
    int rows = image.rows;
    int cols = image.cols;
    // 定义三个Mat变量，分别用于存储3个通道的像素值
    cv::Mat Channel[3];
    // 使用extractChannel函数提取蓝色通道，通道编号为0
    cv::extractChannel(image, Channel[0], 0);
    // 使用extractChannel函数提取绿色通道，通道编号为1
    cv::extractChannel(image, Channel[1], 1);
    // 使用extractChannel函数提取红色通道，通道编号为2
    cv::extractChannel(image, Channel[2], 2);

    FGMask.setTo(Scalar(255,255,255));
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < cols; j++)
        {
            for(int k = 0;k < channel;k++)
            {
                unsigned char gray = Channel[k].at<unsigned char>(i, j);
                int fit_bg = 0;
                // 比较确定前景/背景
                for (int n = 0; n < NumBackground; n++)
                {
                    if (fabs(gray - imagePixelHistory[i * cols + j].gray[n*channel+k]) < defaultDist2Threshold)// 灰度差别是否位于设定阈值内
                    {
                        FGMask.at<Vec3b>(i, j)[k] = 0;
                    }
                }
            }
        }
    }
}

//KNN聚类算法
int KNNBackground(const char *picPath, const char *picSuffix, int channel,int NumBackground)
{
    Mat image;
    for(int i = 0;i < channel;i++)
    {
        pBackgroundKnn[i] = createBackgroundSubtractorKNN();
        pBackgroundKnn[i]->setHistory(NumBackground);
        pBackgroundKnn[i]->setDist2Threshold(600);
        pBackgroundKnn[i]->setShadowThreshold(0.2);
    }

    vector<string> imageNames = getFilesWithSuffix(picPath, picSuffix);
    // 使用迭代器遍历vector
    for (vector<string>::iterator imageName = imageNames.begin(); imageName != imageNames.end(); imageName++)
    {
        // 读取背景图
        if ((image = imread(*imageName)).empty())
        {
            cout << "imread failed" << endl;
            exit(EXIT_FAILURE);
        }
        //gammaCorrection(image,image,1,0,1.25);
        // 定义三个Mat变量，分别用于存储3个通道的像素值
        cv::Mat Channel[3],FGMask_KNN[3];        
        for(int i = 0;i < channel;i++)
        {
            // 使用extractChannel函数提取通道
            cv::extractChannel(image, Channel[i], i);
            pBackgroundKnn[i]->apply(Channel[i], FGMask_KNN[i]);
        }
    }
}

int getKNNForegroundMask(std::string picName,Mat &FGMask_KNN,int channel)
{
    cv::Mat image;
    if ((image = imread(picName)).empty())
    {
        cout << "imread failed" << endl;
        exit(EXIT_FAILURE);
    }
    //gammaCorrection(image,image,1,0,1.25);
    cv::Mat Channel[3],FGMask_KNNRGB[3];
    for(int i = 0;i < channel;i++)
    {
        // 使用extractChannel函数提取通道
        cv::extractChannel(image, Channel[i], i);
        pBackgroundKnn[i]->apply(Channel[i], FGMask_KNNRGB[i],0);
        threshold(FGMask_KNNRGB[i],FGMask_KNNRGB[i],127,255,THRESH_BINARY);
    }
    // 将三个单通道 Mat 合并为一个三通道 Mat
    std::vector<cv::Mat> channels = {FGMask_KNNRGB[0], FGMask_KNNRGB[1], FGMask_KNNRGB[2]};
    cv::merge(channels, FGMask_KNN);
}
