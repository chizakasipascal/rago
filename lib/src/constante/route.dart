import 'package:flutter/material.dart';
import 'package:rago/src/views/screens/homeScreen.dart';

class Routes {
  Routes._();
  static const initPage = '/initPage';
  static const homeScreen = '/homeScreens';

  static final routes = <String, WidgetBuilder>{
    // initPage: (BuildContext context) => const Login(),
    homeScreen: (BuildContext context) => const HomeScreen(),
  };
}
