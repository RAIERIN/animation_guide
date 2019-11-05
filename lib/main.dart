import 'package:animation_guide/animation_widget.dart';
import 'package:animation_guide/hooks_view.dart';
import 'package:animation_guide/sequence_animation.dart';
import 'package:flutter/material.dart';
import './basic_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Animation',
      home: SequenceAnimationView(),
    );
  }
}
