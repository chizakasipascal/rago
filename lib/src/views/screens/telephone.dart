import 'package:flutter/material.dart';

class Telephone extends StatelessWidget {
  const Telephone({
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
