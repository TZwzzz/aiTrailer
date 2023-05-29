#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;

int main()
{
    VideoCapture cap("rtsp://192.168.156.71:5544/live");
    if(!cap.isOpened())
    {
        cout << "video is not opened" << endl;
        return -1;
    }
    cout << "视频中图像的宽度=" << cap.get(CAP_PROP_FRAME_WIDTH) << endl;
    cout << "视频中图像的高度=" << cap.get(CAP_PROP_FRAME_HEIGHT) << endl;
    cout << "视频帧率=" << cap.get(CAP_PROP_FPS) << endl;
    Mat image;
    while(1)
    {
        cap >> image;
        if(image.empty())
        {
            cout << "image is empty" << endl;
            break;
        }
//        cvtColor(image,image,COLOR_BGR2GRAY);
	imshow("camera",image);
        int key = waitKey(1);
        if (key == 27)
        {
            // ESC键退出程序
            break;
        }
        else if(key == 13)
        {
            //回车键拍照
            time_t timestamp;//时间戳
            time(&timestamp);
            string savePhotoName = "/home/wilson/work/drawAndSavePic/media/" + to_string(timestamp) + ".jpg";
            imwrite(savePhotoName, image);
            cout << "Saved image to " << savePhotoName << endl;
        }

    }
}
