---
layout: page
title: Eye Tracking Integration
---

An ideal application of OpenPose would be integration with [Gaze
Tracking](../gaze-tracking.md).

The current gaze tracking application needs a description of eye and
face locations within an image.  Openpose generates a json file with
these locations automatically.

## Gaze Tracking Data Input

The current Gaze Tracking implementation is based on MIT's [Eye Tracking for Everyone](https://github.com/CSAILVision/GazeCapture) (Krafka et al., 2016). The trained model accepts four inputs:
  * 224x224 image of the face
  * 224x224 image of the left eye
  * 224x224 image of the right eye
  * 25x25 face grid - a 25 x 25 binary occupancy grid describing the location of the face in the image

The data pre-processor for the data ingests a full-size image and JSON files describing the location of these features and extracts them to feed to the model. The JSON files are formatted as follows:

#### appleFace.json, appleLeftEye.json, appleRightEye.json
- `X`, `Y`: Position of the top-left corner of the bounding box (in pixels). In `appleFace.json`, this value is relative to the top-left corner of the full frame; in `appleLeftEye.json` and `appleRightEye.json`, it is relative to the top-left corner of the *face crop*.
- `W`, `H`: Width and height of the bounding box (in pixels).
- `IsValid`: Whether or not there was actually a detection. 1 = detection; 0 = no detection.

#### faceGrid.json
- `X`, `Y`: Position of the top-left corner of the face box (1-indexed, within a 25 x 25 grid).
- `W`, `H`: Width and height of the face box.
- `IsValid`: Whether the data is valid (1) or not (0). This is equivalent to the intersection of the associated `IsValid` arrays in the apple*.json files (since we required samples to have Apple face and eye detections).
