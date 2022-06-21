import 'package:flutter/material.dart';

import 'package:ragotheme/ragotheme.dart';

class FirstOptions extends StatelessWidget {
  final String description;
  final Widget widget;
  final Color color;
  final bool indexSelect;
  final VoidCallback onTap;
  const FirstOptions({
    key,
    required this.description,
    required this.widget,
    required this.color,
    this.indexSelect = true,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: indexSelect ? kRago : kGreyColor.withOpacity(.5),
            width: 2.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: widget,
            ),
            const SizedBox(height: 10),
            Text(
              description,
            ),
          ],
        ),
      ),
    );
  }
}
