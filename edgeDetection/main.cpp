#include "main.h"

using namespace cv;
using namespace std;

int main()
{
    vector<string> imageNames = getFilesWithSuffix("../../drawAndSavePic/media",".jpg");
    // 使用迭代器遍历vector
    for (vector<string>::iterator imageName = imageNames.begin(); imageName != imageNames.end(); imageName++)
    {
        // 读取图像，黑白图像边缘检测结果较为明显
        Mat img = imread(*imageName,IMREAD_GRAYSCALE);
        if (img.empty())
        {
            cout << "请确认图像文件名称是否正确" << endl;
            return -1;
        }
        Mat resultG;

        // 高斯模糊后检测图像边缘
        GaussianBlur(img, resultG, Size(3, 3), 2);
        Canny(resultG, resultG, 50, 100, 3);
        // 寻找轮廓
        // std::vector<std::vector<Point>> contours;
        // findContours(resultG, contours, RETR_LIST, CHAIN_APPROX_SIMPLE);

        // 遍历所有轮廓
        // for (size_t i = 0; i < contours.size(); i++)
        // {
        //     // 进行多边形拟合
        //     std::vector<Point> approx;
        //     approxPolyDP(contours[i], approx, arcLength(contours[i], true) * 0.02, true);

        //     // 判断是否为矩形轮廓
        //     if (approx.size() == 4 && isContourConvex(approx))
        //     {
        //         // 计算轮廓面积
        //         double area = fabs(contourArea(approx));

        //         // 判断轮廓面积是否符合大小
        //         if (area > 100)
        //         {
        //             // 绘制轮廓及四个角点
        //             drawContours(resultG, contours, i, Scalar(255), 2);
        //             // for (size_t j = 0; j < approx.size(); j++)
        //             // {
        //             //     circle(resultG, approx[j], 3, Scalar(0, 255, 0), -1);
        //             // }
        //         }
        //     }
        // }

        //直线检测
        vector<Vec4i> lines;
        HoughLinesP(resultG, lines, 4, CV_PI / 180, 50, 50, 30);

        //去掉短直线以及垂直的线
        Mat mask = Mat::zeros(resultG.size(), CV_8UC1);
        for (size_t i = 0; i < lines.size(); i++)
        {
            Vec4i l = lines[i];
            double length = hypot(l[2] - l[0], l[3] - l[1]); //计算直线长度

            //去掉短直线
            if (length < 200)
            {
                continue;
            }

            //去掉垂直直线
            double angle = atan2(abs(l[3] - l[1]), abs(l[2] - l[0])) * 180 / CV_PI;
            if (angle >= 10 && angle <= 90)
            {
                continue;
            }

            line(mask, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(255), 2, LINE_AA);
        }

        //显示图像
        imshow(*imageName, mask);
        imshow("image",resultG);
    }
    waitKey(0);
    return 0;
}
