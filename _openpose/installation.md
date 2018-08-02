---
layout: page
title: Installation
---

Follow the [installation instructions](https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/installation.md#installation) in order to get openpose up and running. The following cuda and cuddn versions work well:

* [CUDA 8.0.61](https://developer.nvidia.com/cuda-80-ga2-download-archive)
* [cudnn 6.0.21 for CUDA 8.0](https://developer.nvidia.com/rdp/cudnn-archive)

An optional cmake flag is to use opencv with gl. If you choose to use this, be sure to build opencv from source with opengl support enabled before building openpose.

> note "Installing on a system with ROS"
>Ros installs its own version of opencv. In order to properly build
>openpose with opencv-opengl support, first build opencv from source
>with opengl enabled. Update `LD_LIBRARY_PATH` and `CMAKE_PREFIX_PATH`
>to point to the installed library, normally at `/usr/local/lib` **Make sure it comes before the ros library paths!**
