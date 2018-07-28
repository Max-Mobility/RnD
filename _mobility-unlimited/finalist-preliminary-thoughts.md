---
layout: page
title: Finalist Ideas
---

## Finalist Application Brainstorming

> note "Update 7/26/18"
> After meeting with Darin, Dave, William, and others, it was decided to wrap these ideas into an alternative control device focused on providing end-to-end as-needed assistance for people with ALS. The idea is that this will be a device that can easily scale in the level of assistance it provides and accept the control input most suitable to the user. See [the finalist application page](product-overview.md) for more info.








### Addressing Discovery Application Feedback

>The key weaknesses of your application were: minimal details on the development of the "watch" algorithms

* Nuke the watch
* ~~Double down on the watch~~



>worries around the use of RGB-D cameras that may lead to navigational errors (as they tend to have outdoor limitations)

* FLIR camera?

>Some assessors also mentioned that similar products were already being developed by a number of laboratories and design projects, and that it was unclear how innovative it would be.

* Emphasize innovative components 
* Develop a better product development plan than a university can achieve


### Updates To Product Idea

Remove the watch component, leaving a "smart joystick" module with varying degrees of semi-autonomy. Include an additional camera facing the user for eye-gaze detection for use in contextually changing the degree of autonomy as well as an alternative control input. 

#### Goal Behavior

* Maintain a vision-based map of the surrounding area

* Identify people, curbs, ramps, and drop offs

* Perform obstacle avoidance and social path planning

* Enable varying degrees of shared control, or allow dynamically changing amount of shared control

* Selectable Control inputs (joystick, eye-gaze)

* "Universal" controller for mulitple PWC devices

#### Onboard Sensors and Hardware

1. Forward-facing rgb camera
2. Forward-facing flir camera
3. User-facing rgb camera
4. IMU
5. Jetson TX2 and small footprint mount

#### Challenges

* Plug-N-Play on different chairs requires adapting to different chairs (dynamics/kinematics) and different users.

* For good HRI, need some sort of feedback to the user (auditory, haptic, vibration, etc)

* Social interation and social pathplanning

#### Prototypes

[Gaze Tracker](../gaze-tracking.md)  
[Roomba Mobile Platform](../roomba.md)  
[Autochair Platform](../autochair.md)  
[Gazebo Simulation](../gazebo-simulation.md)  

#### User Feedback Options

* Todd-the-Quadfather

* Gleason

* Tim Shaw

### Demos/Presentation

Overhead video of corridor and obstacle navigation split screened with video of joystick during operation. Compare manual operation vs a simple shared control algorithm vs more complex algorithms. Demonstrate the reduced movement of joystick. Overlay Arrow indicating direction joystick is point on video to show how much/little it swings about.
