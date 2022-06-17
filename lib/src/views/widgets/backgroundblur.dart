import 'dart:ui';
import 'package:flutter/material.dart';

class BackgroundBlur extends StatelessWidget {
  final Widget child;
  final double sigmaX;
  final double sigmaY;
  const BackgroundBlur({
    key,
    this.sigmaX = 5.0,
    this.sigmaY = 5.0,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
      child: Stack(
        children: [
          child,
        ],
      ),
    );
  }
}
