import 'package:flutter/material.dart';

import 'package:rago/src/views/screens/screens.dart';

class Routes {
  Routes._();
  static const initPage = '/initPage';
  static const homeScreen = '/homeScreens';
  static const acceuil = '/acceuil';
  static const radio = '/radio';
  static const login = '/log';
  static const contact = '/log';
  static const apropos = '/about';
  static const top = '/top10';

  static final routes = <String, WidgetBuilder>{
    initPage: (BuildContext context) => const Login(),
    homeScreen: (BuildContext context) => const HomeScreen(),
    acceuil: (BuildContext context) => const Acceuil(),
    radio: (BuildContext context) => const RadioStation(),
    login: (BuildContext context) => const Login(),
    contact: (BuildContext context) => const Contact(),
    apropos: (BuildContext context) => const About(),
    top: (BuildContext context) => const Top(),
  };
}
