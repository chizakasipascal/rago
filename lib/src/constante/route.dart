import 'package:flutter/material.dart';

import 'package:rago/src/views/screens/screens.dart';

class Routes {
  Routes._();
  static const initPage = '/initPage';
  static const homeScreen = '/homeScreens';
  static const acceuil = '/acceuil';
  static const radio = '/radio';
  static const login = '/login';
  static const register = '/register';
  static const page = '/page';
  static const contact = '/log';
  static const apropos = '/about';
  static const emissions = '/emissions';

  static final routes = <String, WidgetBuilder>{
    initPage: (BuildContext context) => const Splash(),
    login: (BuildContext context) => const Login(),
    register: (BuildContext context) => const RegisterEmail(),
    page: (BuildContext context) => const PageNav(),
    homeScreen: (BuildContext context) => const HomeScreen(),
    acceuil: (BuildContext context) => const Acceuil(),
    radio: (BuildContext context) => const RadioStation(),
    contact: (BuildContext context) => const Contact(),
    apropos: (BuildContext context) => const About(),
    emissions: (BuildContext context) => const Emissions(),
  };
}
