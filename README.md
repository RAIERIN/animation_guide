# animation_guide

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

The Animation has mainly three requirements:
Animation Controller:
Manage Animation, Listen For updates and Manipulate Animation

Animation known as Tween:
Defines the begin and end value with how to move beginning to the end through a curve. Default curve is linear which means every frame increase by exact same amount.
Object will notify the controller through listenable protocal whenever its value has changed.

Ticker Class:
Class that listens to the frame callback and calls a tick function that passes the elapsed duration between the current frame and the last frame to the ticker listener.
In our case ticker listener is the controller

Implementation of Basic animation, animatedWidget, flutter_hooks and flutter_sequence_animation
