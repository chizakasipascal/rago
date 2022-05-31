import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:rago/src/utils/colors.dart';

class FirstOptions extends StatelessWidget {
  final String description;
  final Widget widget;
  final Color color;
  final bool indexSelect;
  final VoidCallback onTap;
  const FirstOptions({
    key,
    this.description,
    this.widget,
    this.color,
    this.indexSelect = true,
    this.onTap,
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
            color: indexSelect ? slateBlue : grey.withOpacity(.5),
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
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: grey,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
