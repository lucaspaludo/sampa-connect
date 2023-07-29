import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({super.key, required this.controller})
      : buttonSqueeze = Tween(
          begin: 320.0,
          end: 60.0,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: const Interval(0.0, 0.150),
        )),
        buttonZoomOut = Tween(
          begin: 60.0,
          end: 1000.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.5, 1, curve: Curves.bounceOut),
          ),
        );

  final Animation<double> buttonSqueeze;
  final Animation<double> buttonZoomOut;

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
        padding: const EdgeInsets.only(
          bottom: 50,
        ),
        child: InkWell(
            onTap: () {
              controller.forward();
            },
            child: Hero(
              tag: "Fade",
              child: buttonZoomOut.value == 60
                  ? Container(
                      width: buttonSqueeze.value,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: _buildInside(context))
                  : Container(
                      width: buttonZoomOut.value,
                      height: buttonZoomOut.value,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          shape: buttonZoomOut.value < 500
                              ? BoxShape.circle
                              : BoxShape.rectangle),
                    ),
            )));
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueeze.value > 75) {
      return const Text(
        "Entrar.",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      );
    } else {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
