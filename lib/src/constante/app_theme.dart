import 'package:flutter/material.dart';
import 'package:rago/src/utils/colors.dart';

final ThemeData themeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: kWhiteTrasparent,
  backgroundColor: kBackground,
  primaryColor: kBackground,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: kGrey.withOpacity(.5),
  ),
  splashColor: kBlue.withOpacity(.4),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kBackground),
);
