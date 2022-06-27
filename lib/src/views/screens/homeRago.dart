import 'package:flutter/material.dart';

class HomeRago extends StatelessWidget {
  const HomeRago({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
    );
  }
}
