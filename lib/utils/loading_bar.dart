import 'package:flutter/material.dart';

class LoadingBar extends StatelessWidget {
  final AnimationController animationController;
  final int position;
  final int currentIndex;

  const LoadingBar(
      {Key? key,
      required this.animationController,
      required this.position,
      required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.5),
        child: LayoutBuilder(builder: (context, constraints) {
          return Stack(
            children: [
              BarContainer(
                width: double.infinity,
                color: position < currentIndex
                    ? Colors.white
                    : Colors.white.withOpacity(0.5),
              ),
              position == currentIndex
                  ? AnimatedBuilder(
                      animation: animationController,
                      builder: (context, child) {
                        return BarContainer(
                            width: constraints.maxWidth *
                                animationController.value,
                            color: Colors.white);
                      })
                  : const SizedBox.shrink()
            ],
          );
        }),
      ),
    );
  }
}

class BarContainer extends StatelessWidget {
  final double width;
  final Color color;
  const BarContainer({Key? key, required this.width, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: width,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black26, width: 0.8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
