import 'package:flutter/material.dart';
import 'package:ragotheme/ragotheme.dart';

class RagoButtom extends StatelessWidget {
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.11,
      height: 25.81,
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
