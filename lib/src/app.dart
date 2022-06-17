import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rago/src/constante/app_theme.dart';
import 'package:rago/src/constante/route.dart';
import 'package:rago/src/constante/strings.dart';
import 'package:rago/src/utils/colors.dart';
import 'package:rago/src/views/screens/homeScreen.dart';

class Rago extends StatelessWidget {
  const Rago({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: kBlue, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      initialRoute: Routes.login,
      home: const HomeScreen(),
      routes: Routes.routes,
    );
  }
}
