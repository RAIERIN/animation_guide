import 'package:flutter/material.dart';

class HooksView extends StatefulWidget {
  HooksView({Key key}) : super(key: key);

  _HooksViewState createState() => _HooksViewState();
}

class _HooksViewState extends State<HooksView> with TickerProviderStateMixin {
  AnimationController controller;
  Animation growAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    controller..forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GrowingContainer(
        controller: controller,
      )),
    );
  }
}

class GrowingContainer extends AnimatedWidget {
  GrowingContainer({AnimationController controller})
      : super(
            listenable: Tween<double>(begin: 0, end: 200).animate(controller));
  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;
    return Container(
      child: Container(
        height: animation.value,
        width: animation.value,
        color: Colors.red,
      ),
    );
  }
}
