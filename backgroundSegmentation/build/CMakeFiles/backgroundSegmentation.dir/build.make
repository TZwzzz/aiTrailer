# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wilson/work/backgroundSegmentation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wilson/work/backgroundSegmentation/build

# Include any dependencies generated for this target.
include CMakeFiles/backgroundSegmentation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/backgroundSegmentation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/backgroundSegmentation.dir/flags.make

CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o: CMakeFiles/backgroundSegmentation.dir/flags.make
CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o: ../backgroundSegementation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wilson/work/backgroundSegmentation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o -c /home/wilson/work/backgroundSegmentation/backgroundSegementation.cpp

CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wilson/work/backgroundSegmentation/backgroundSegementation.cpp > CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.i

CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wilson/work/backgroundSegmentation/backgroundSegementation.cpp -o CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.s

CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.requires:

.PHONY : CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.requires

CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.provides: CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.requires
	$(MAKE) -f CMakeFiles/backgroundSegmentation.dir/build.make CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.provides.build
.PHONY : CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.provides

CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.provides.build: CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o


CMakeFiles/backgroundSegmentation.dir/main.cpp.o: CMakeFiles/backgroundSegmentation.dir/flags.make
CMakeFiles/backgroundSegmentation.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wilson/work/backgroundSegmentation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/backgroundSegmentation.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/backgroundSegmentation.dir/main.cpp.o -c /home/wilson/work/backgroundSegmentation/main.cpp

CMakeFiles/backgroundSegmentation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backgroundSegmentation.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wilson/work/backgroundSegmentation/main.cpp > CMakeFiles/backgroundSegmentation.dir/main.cpp.i

CMakeFiles/backgroundSegmentation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backgroundSegmentation.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wilson/work/backgroundSegmentation/main.cpp -o CMakeFiles/backgroundSegmentation.dir/main.cpp.s

CMakeFiles/backgroundSegmentation.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/backgroundSegmentation.dir/main.cpp.o.requires

CMakeFiles/backgroundSegmentation.dir/main.cpp.o.provides: CMakeFiles/backgroundSegmentation.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/backgroundSegmentation.dir/build.make CMakeFiles/backgroundSegmentation.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/backgroundSegmentation.dir/main.cpp.o.provides

CMakeFiles/backgroundSegmentation.dir/main.cpp.o.provides.build: CMakeFiles/backgroundSegmentation.dir/main.cpp.o


CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o: CMakeFiles/backgroundSegmentation.dir/flags.make
CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o: ../picProcess.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wilson/work/backgroundSegmentation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o -c /home/wilson/work/backgroundSegmentation/picProcess.cpp

CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wilson/work/backgroundSegmentation/picProcess.cpp > CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.i

CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wilson/work/backgroundSegmentation/picProcess.cpp -o CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.s

CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.requires:

.PHONY : CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.requires

CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.provides: CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.requires
	$(MAKE) -f CMakeFiles/backgroundSegmentation.dir/build.make CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.provides.build
.PHONY : CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.provides

CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.provides.build: CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o


CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o: CMakeFiles/backgroundSegmentation.dir/flags.make
CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o: ../readDir.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wilson/work/backgroundSegmentation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o -c /home/wilson/work/backgroundSegmentation/readDir.cpp

CMakeFiles/backgroundSegmentation.dir/readDir.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backgroundSegmentation.dir/readDir.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wilson/work/backgroundSegmentation/readDir.cpp > CMakeFiles/backgroundSegmentation.dir/readDir.cpp.i

CMakeFiles/backgroundSegmentation.dir/readDir.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backgroundSegmentation.dir/readDir.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wilson/work/backgroundSegmentation/readDir.cpp -o CMakeFiles/backgroundSegmentation.dir/readDir.cpp.s

CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.requires:

.PHONY : CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.requires

CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.provides: CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.requires
	$(MAKE) -f CMakeFiles/backgroundSegmentation.dir/build.make CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.provides.build
.PHONY : CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.provides

CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.provides.build: CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o


# Object files for target backgroundSegmentation
backgroundSegmentation_OBJECTS = \
"CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o" \
"CMakeFiles/backgroundSegmentation.dir/main.cpp.o" \
"CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o" \
"CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o"

# External object files for target backgroundSegmentation
backgroundSegmentation_EXTERNAL_OBJECTS =

backgroundSegmentation: CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o
backgroundSegmentation: CMakeFiles/backgroundSegmentation.dir/main.cpp.o
backgroundSegmentation: CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o
backgroundSegmentation: CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o
backgroundSegmentation: CMakeFiles/backgroundSegmentation.dir/build.make
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_stitching.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_superres.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_videostab.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_aruco.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_bgsegm.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_bioinspired.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_ccalib.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_dnn_objdetect.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_dpm.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_face.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_freetype.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_fuzzy.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_hdf.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_hfs.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_img_hash.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_line_descriptor.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_optflow.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_reg.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_rgbd.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_saliency.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_stereo.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_structured_light.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_surface_matching.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_tracking.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_xfeatures2d.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_ximgproc.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_xobjdetect.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_xphoto.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_shape.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_highgui.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_videoio.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_phase_unwrapping.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_video.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_datasets.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_plot.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_text.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_dnn.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_ml.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_imgcodecs.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_objdetect.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_calib3d.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_features2d.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_flann.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_photo.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_imgproc.so.3.4.12
backgroundSegmentation: /home/wilson/OpenCV/opencv-3.4.12/install/lib/libopencv_core.so.3.4.12
backgroundSegmentation: CMakeFiles/backgroundSegmentation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wilson/work/backgroundSegmentation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable backgroundSegmentation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/backgroundSegmentation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/backgroundSegmentation.dir/build: backgroundSegmentation

.PHONY : CMakeFiles/backgroundSegmentation.dir/build

CMakeFiles/backgroundSegmentation.dir/requires: CMakeFiles/backgroundSegmentation.dir/backgroundSegementation.cpp.o.requires
CMakeFiles/backgroundSegmentation.dir/requires: CMakeFiles/backgroundSegmentation.dir/main.cpp.o.requires
CMakeFiles/backgroundSegmentation.dir/requires: CMakeFiles/backgroundSegmentation.dir/picProcess.cpp.o.requires
CMakeFiles/backgroundSegmentation.dir/requires: CMakeFiles/backgroundSegmentation.dir/readDir.cpp.o.requires

.PHONY : CMakeFiles/backgroundSegmentation.dir/requires

CMakeFiles/backgroundSegmentation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/backgroundSegmentation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/backgroundSegmentation.dir/clean

CMakeFiles/backgroundSegmentation.dir/depend:
	cd /home/wilson/work/backgroundSegmentation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wilson/work/backgroundSegmentation /home/wilson/work/backgroundSegmentation /home/wilson/work/backgroundSegmentation/build /home/wilson/work/backgroundSegmentation/build /home/wilson/work/backgroundSegmentation/build/CMakeFiles/backgroundSegmentation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/backgroundSegmentation.dir/depend

