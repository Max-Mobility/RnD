---
layout: page
title: Product Overview
---
## Idea

A *smart joystick* that aids the user in navigating their world

Specifically a *plug-and-play (PnP)* device targeting people with ALS to
provide a sliding scale of support throughout their lives.

This device will:

1. Implement alternative controls with scaling complexity
2. Identify and avoid obstacles
3. Infer the intent of the user
4. Identify and react to people
5. Share control of the chair between the user and onboard
   systems

> info "What does it mean to react to a person?"
> In its simplest form, people can be treated as just another obstacle
> -- something to be navigated around in the most efficient or
> quickest way possible.
>
> But in reality, this is not feasible. An individual has their own
> `social space` to be considered. In most cases it is better to
> travel behind an individual than in front when moving around
> them. If two or more individuals are having a conversation, it would
> be very rude to force our way between them.
>
> Additionally, sometimes a person might not be just another obstacle,
> but instead the user's goal destination. We might want to approach
> them or follow at a set distance.
>
> All of this implies an additional,capability of our device:
> `contextual awareness`. This essentially is the fusion of all of our
> stated capabilities: user input via various controls, estimation of
> user intent, and identification of individuals in the environment,
> to allow the system to make informed decisions.

The sensor stack on the device wil be capable of meeting all of the
individual's control input needs, from initially being capable of
operating a standard inductive joystick, to control through head
movement, all the way to gaze detection.

## Novelty

This product wil stand out in several ways:

1. Novel, low-cost implementation of advanced procedures such as
   gaze-tracking and obstacle detection
2. Novel techniques for `collaboration` between the user and device.

## Technology

Component | Type | Description | Quantity
----------|------|-------------|---------
Jetson TX2 | Embedded System | The brains of the unit. Conducts all onboard processing, from eye-gaze tracking to people dectection to obstacle avoidance | 1
User-Facing Camera | Sensor | Provides a video stream of the user for use in affect and intent determination. Starting with eye-gaze for now. | At least 1
Forward-Facing Camera | Sensor | Provides a video stream for obstacle and people detection. | At least 1
IMU | Sensor | 6-9 axis imu for use in sensor fusion processes. Possibly useful for path planning and intent detection. | 1
Inductive Joystick | Joystick | Typical JSM joystick for controlling the chair | 1

> info "RGB and FLIR Cameras"
> The cheapest and easiest solution for our image processing needs is
> the standard RGB camera. Unfortunately, the performance and
> reliability of an RGB camera can degrade when in extremely bright or
> dark conditions
> A solution to this is the use of a FLIR thermal camera. This type of
> camera is resistant to glare and lighting changes, and can provide
> another stream of data for our image processing. The caveat is the
> addition of another, more expensive camera.

## Alternative Controls
* Joystick Semi-Autonomy
* Head-Tilt Control
* Eye-Gaze Control

These control aspects will function from the same input device, which
will adapt alongside the user so that they can learn and use a single
input device as their ability changes. Such adaptability will allow
decrease the burden on the healthcare system, the technicians, and the
clinicians who would normally have to fund, provide, configure, and
manage the transition between different input devices. Additionally,
by allowing the user access to more capable control inputs which can
keep them in control of their chair for longer, they will be able to
maintain their independence and their mobility for longer, thus
increasing their quality of life.

### Joystick Semi-Autonomy

> note "TODO"
> This is the most basic mode of collaborative control. The user
> steers with the joystick as usual, but the obstacle detection and
> environmental awareness of the device aid in obstacle avoidance.
> Use techniques such as a vector field histogram and shared control

The semi-autonomous joystick input mode provides a superior level of
control and independence over a standard joystick and is designed to
help the user better navigate the world around them. Associated with
navigation is the cognitive load of keeping track of the changing
environment around you, which can be especially difficult and
near-impossible because the chair itself obstructs your view and
hearing of the world. The smart joystick takes care of these issues by
allowing the user to give the general intention - that is the
direction they want to go or the person they want to follow - and the
chair can (optionally) manage the speed and steering adjustments to
keep them on that course. Such a feature is useful for easily
navigating up/down a ramp, through a doorway or hallway, or along a
sidewal. In such scenarios, the smart joystick can automatically
adjust for environmental conditions such as cross-slope or obstacles.

### Head-Tilt Control

> note "TODO"
> Everything the joystick does, but with an additiona layer of Open
> Pose that translates the user's head-neck orientation into a
> joystick command. The larger uncertainty in this control input
> should mean that the autonomous system's control inputs should have
> a larger weight in the shared control scheme

### Eye-Gaze Control

> note "TODO"
> The most advanced user interface. A first incarnation would be
> controlling buttons on a screen, but more advanced work and
> interfaces can be made to allow more intuitive eye control. All
> autonomy/safety systems active the same as other input schemes.

## Environment Detection

We will use a monocular vision approach to generate both visual
odometry and a depth map of the environment. Long term, this data can
be used in a SLAM algorithm to map and localize the chair in the
environment. Short term, the depth map and odometry can be used to
locate obstacles and people in the immediate vicinity and allow the
system to react accordingly.

### Depth Map Generation

> note "TODO"
> Monocular Depth Estimation via a deep model
> https://arxiv.org/abs/1806.01260

### Visual Odometry

> note "TODO"
> UnDeepVO: Monocular Visual Odometry through Unsupervised Deep
> Learning
> http://senwang.gitlab.io/UnDeepVO/

### Obstacle Detection

> note "TODO"
> Using image segmentation on the depth map to identify nearby
> obstacles and drivable surfaces

### People Detection

> note "TODO"
> Use of OpenPose for detecting people within the video's frame.

## Contextual Awareness

`Contextual Awareness` is the process of informed decision making in
regards to intent determination. This involves first identifying the
user's actions and then trying to determine a best course of action
based on the environment and these actions. This contextual awareness
is what will help determine the amount of autonomy vs manual control
of the system at any point. 

For example, say that a user indicates that they want to move forward,
if the environment is free of obstacles, the system should allow
mainly manual control of the system, and let the user move forward of
their own accord, even if the actual path traveled ends up being
slightly meandering. However, if there is a large curb or people
around the chair, the chair should provide a larger level of
autonomous control (while still considering the user's input!) to
ensure no collections occur.

### Intent Determination

Based on the sensor inputs available (joystick/head-tilt/eye-gaze and
camera feeds) general guesses can be made to the user's intent. This
can be something as low level as `move around this obstacle`, `go
through this doorway`, or as high level as `follow alongside this
person`.

> note "TODO"
>Talk about determination of the user's goal or intent based on the
>data available. Example being using the joystick's input to determine
>the goal location to travel towards, and incorporating the
>gaze-direction to identify targets such as "go through a doorway" or
>"approach this person".

### User-Device Collaboration
> note "TODO"
>Essentially an explanation of Human-Robot interaction and how this
>is a critical element to allow the user to feel as independent as
>possible
## Target Demonstrables for Finalist Application

The goal for the finalist application should be to demonstrate working
prototypes of key system components, so that it can be emphasized that
the potential for our product is high and definitely realizable. This
will allow us to emphasize that the majority of the work is
integration of these technologies into a joystick's form factor and
then extensive work on intent determination, shared control and user interface.

1. Eye Gaze Determination
2. People Detection
3. Depth Map Generation
4. Plug-N-Play Capability

## Notes for things to talk about in preceding sections

* Affect Determination
* Replacement of lidar/rgb-d cameras with monocular camera and ML
* ML for depth map generation
* Better distinguish what are the novel elements of the product. The
  novel elements will be the main emphasis when presenting for the
  application, all well as demonstrating the overlal potential for the
  device to aid users.
