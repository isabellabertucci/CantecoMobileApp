import 'package:flutter/material.dart';

class PageRouteLtoR extends PageRouteBuilder {
  final Widget child;

//nao usado devido esta com o uso correto de pop push e pushRemoveUntil está animação já ser utilizada

  PageRouteLtoR({
    required this.child,
  }) : super(
          transitionDuration: const Duration(milliseconds: 120),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
}
