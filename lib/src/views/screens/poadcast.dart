import 'package:flutter/material.dart';

class Poadcast extends StatelessWidget {
  const Poadcast({
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
