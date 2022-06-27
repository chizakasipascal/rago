import 'package:flutter/material.dart';
import 'package:rago/src/views/screens/screens.dart';
import 'package:ragotheme/ragotheme.dart';
import '../widgets/backgroundblur.dart';

class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    final size = MediaQuery.of(context).size;
    return BuildBackground(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: size.height * .13,
            left: 20,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login Account",
                        style: themeData.textTheme.headline6!
                            .copyWith(color: kRago),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "Hello, welcome back to our account",
                        style: themeData.textTheme.bodyText2,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.translate_rounded,
                    color: kGreyColor,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: kGreyColor,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * .2),
            child: DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Container(
                      height: 70,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kGreyColor.withOpacity(.1),
                      ),
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      margin: const EdgeInsets.only(right: 5, top: 5),
                      child: TabBar(
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kWhiteColor,
                        ),
                        labelPadding: const EdgeInsets.only(left: 5, right: 5),
                        labelStyle: themeData.textTheme.bodyText2,
                        tabs: [
                          Tab(
                            child: Container(
                              width: size.width * .5,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Email",
                                  style: themeData.textTheme.bodyText2,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              width: size.width * .5,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Phone number",
                                  style: themeData.textTheme.bodyText2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        EmailLogin(),
                        Register(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
