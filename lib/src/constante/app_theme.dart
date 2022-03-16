import 'package:flutter/material.dart';
import 'package:rago/src/utils/colors.dart';

final ThemeData themeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: whiteTrasparent,
  backgroundColor: background,
  primaryColor: background,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: grey.withOpacity(.5),
  ),
  splashColor: background,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: background),
);
