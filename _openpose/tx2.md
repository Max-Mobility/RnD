---
layout: page
title: OpenPose on the TX2
---

[Current installation instructions for the
tx2](https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/installation_jetson_tx2.md)


**Note that this is designed for Jetpack 3.1!  Additional steps must
be made to correctly install**

* Optionally install opencv fresh. See [jetson
  hacks](https://www.jetsonhacks.com/2018/05/28/build-opencv-3-4-with-cuda-on-nvidia-jetson-tx2/). This
  ensures it is built with cuda, opengl, and gstreamer suppport.
* Follow the steps listed in [this
  issue](https://github.com/CMU-Perceptual-Computing-Lab/openpose/issues/448)
* `cp ubuntu_deprecated/Makefile.example ubuntu/.`
* Follow the steps on the TX2 installation page

Currently have openpose running on the TX2, but can only access
usb-cameras such as a webcam.  Need to make modifications to openpose
to access csi cameras, possibly via a gstreamer pipeline.
