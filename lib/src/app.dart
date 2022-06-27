import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:rago/src/constante/route.dart';
import 'package:rago/src/constante/strings.dart';
import 'package:ragotheme/ragotheme.dart';
import 'package:rago/src/views/screens/intropage.dart';

class Rago extends StatelessWidget {
  const Rago({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: kRago, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      initialRoute: Routes.initPage,
      home: OnboardingScreen(), //const HomeScreen(),
      routes: Routes.routes,
    );
  }
}
