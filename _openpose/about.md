---
layout: page
title: About
toc:
 - OpenPose on the TX2
 - Eye Tracking Integration
 - Test Videos
---

[Git Repo](https://github.com/CMU-Perceptual-Computing-Lab/openpose)

OpenPose represents the first real-time multi-person system to jointly detect human body, hand, and facial keypoints (in total 135 keypoints) on single images.

>note "Installing on a system with ROS"
>Ros installs its own version of opencv. In order to properly build
>openpose with opencv-opengl support, first build opencv from source
>with opengl enabled. Update `LD_LIBRARY_PATH` and `CMAKE_PREFIX_PATH`
>to point to the installed library, normally at `/usr/local/lib`
