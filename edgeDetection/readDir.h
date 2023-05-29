#ifndef __READDIR__H__
#define __READDIR__H__

#include <iostream>
#include <string>
#include <vector>
#include <dirent.h>
#include <sys/stat.h>

std::vector<std::string> getFilesWithSuffix(std::string path, std::string suffix);


#endif  //!__READDIR__H__