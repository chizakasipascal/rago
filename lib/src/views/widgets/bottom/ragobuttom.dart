import 'package:flutter/material.dart';
import 'package:ragotheme/ragotheme.dart';

class RagoButtom extends StatelessWidget {
  final double width, height;
  final String descriprion;
  final ButtonStyle? style;
  final Color colortextStyle;
  final VoidCallback onPressed;
  const RagoButtom({
    Key? key,
    this.descriprion = "descriprion",
    this.style,
    required this.onPressed,
    this.colortextStyle = kWhiteColor,
    this.width = 110.11,
    this.height = 25.81,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Text(
          descriprion,
          style: themeData.textTheme.bodyText2!
              .copyWith(color: colortextStyle, fontSize: 12),
        ),
      ),
    );
  }
}
