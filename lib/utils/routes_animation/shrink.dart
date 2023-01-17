import 'package:flutter/material.dart';

class ShrinkAnimation extends PageRouteBuilder {
  final Widget child;

  ShrinkAnimation({
    required this.child,
  }) : super(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      ScaleTransition(
        scale: animation,
        child: child,
      );
}
