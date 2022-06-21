import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constante/assets.dart';

class BuildBackground extends StatelessWidget {
  final Widget child;
  final double sigmaX, sigmaY;

  const BuildBackground(
      {super.key, required this.child, this.sigmaX = 3.0, this.sigmaY = 3.0});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            left: 20,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                Assets.logoRagoS,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: const FlutterLogo(),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
            child: child,
          ),
        ],
      ),
    );
  }
}
