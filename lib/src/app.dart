import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rago/src/constante/app_theme.dart';
import 'package:rago/src/constante/route.dart';
import 'package:rago/src/constante/strings.dart';
import 'package:rago/src/utils/colors.dart';
import 'package:rago/src/views/screens/homeScreen.dart';

class Rago extends StatelessWidget {
  const Rago({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: slateBlue, // navigation bar color
      statusBarColor: slateBlue, // status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      home: const HomeScreen(),
      routes: Routes.routes,
    );
  }
}
