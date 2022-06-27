import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({
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
