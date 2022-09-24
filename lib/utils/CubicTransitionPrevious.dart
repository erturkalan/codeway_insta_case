import 'dart:math';

import 'package:flutter/material.dart';

class CubicTransitionPreviousBuilder extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;
  CubicTransitionPreviousBuilder({required this.exitPage, required this.enterPage})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => enterPage,
          transitionsBuilder: _transitionsBuilder(exitPage, enterPage),
        );

  static _transitionsBuilder(exitPage, enterPage) => (context, animation, secondaryAnimation, child) {
        return Stack(
          children: <Widget>[
            SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(-1.0, 0.0),
              ).animate(animation),
              child: Container(
                color: Colors.black54,
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.003)
                    ..rotateY(pi / 2 * animation.value),
                  alignment: FractionalOffset.centerRight,
                  child: enterPage,
                ),
              ),
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: Container(
                color: Colors.black54,
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.003)
                    ..rotateY(pi / 2 * (animation.value - 1)),
                  alignment: FractionalOffset.centerLeft,
                  child: exitPage,
                ),
              ),
            )
          ],
        );
      };
}
