#include "readDir.h"

std::vector<std::string> getFilesWithSuffix(std::string path, std::string suffix)
{
    std::vector<std::string> result;

    DIR *dir = opendir(path.c_str());
    if (dir == nullptr)
    {
        std::cerr << "无法打开目录：" << path << std::endl;
        return result;
    }

    struct dirent *entry = nullptr;
    struct stat fileStat;
    while ((entry = readdir(dir)) != nullptr)
    {
        std::string fileName = entry->d_name;
        if (fileName.length() > suffix.length() && fileName.substr(fileName.length() - suffix.length()) == suffix)
        {
            std::string filePath = path + "/" + fileName;
            if (stat(filePath.c_str(), &fileStat) == 0 && S_ISREG(fileStat.st_mode))
            {
                result.push_back(filePath);
            }
        }
    }

    closedir(dir);

    return result;
}
