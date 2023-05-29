#include "main.h"

int main()
{
    vector<string> imageNames = getFilesWithSuffix("../../drawAndSavePic/media",".jpg");
    objectDetect_init(0.5);
    // 使用迭代器遍历vector
    for (vector<string>::iterator imageName = imageNames.begin(); imageName != imageNames.end(); imageName++)
    {
        // 读取图像，黑白图像边缘检测结果较为明显
        Mat img = imread(*imageName);
        if (img.empty())
        {
            cout << "请确认图像文件名称是否正确" << endl;
            return -1;
        }
        objectDetect_thread(img);
        imshow(*imageName,img);
    }
    waitKey(0);
    return 0;
}