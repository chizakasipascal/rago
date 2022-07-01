import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ragotheme/ragotheme.dart';

import '../../../../constante/route.dart';
import '../../../widgets/widget.dart';

class RegisterEmail extends StatefulWidget {
  const RegisterEmail({Key? key}) : super(key: key);

  @override
  State<RegisterEmail> createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  final GlobalKey<FormState> _keyForm = GlobalKey();

  final GlobalKey<State> _keyLoader =
      GlobalKey<State>(debugLabel: "register  user");

  final TextEditingController _telephone = TextEditingController();

  final TextEditingController _password = TextEditingController();
  late ScrollController _controller;
  bool value = false;

  bool m = false;
  bool f = false;
  _onStartScroll(ScrollMetrics metrics) {
    debugPrint("Scroll Start");
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    debugPrint("Scroll Update");
  }

  _onEndScroll(ScrollMetrics metrics) {
    debugPrint("Scroll End");
  }

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kRago,
        title: const Text("Indetification"),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
            _onStartScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollUpdateNotification) {
            _onUpdateScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollEndNotification) {
            _onEndScroll(scrollNotification.metrics);
          }
          return true;
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _controller,
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: kRago.withOpacity(.3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(FeatherIcons.camera),
              ),
              LineWithCircleRoundConer(isEmptyOne: true, size: size),
              TextFieldCustomer(
                label: "Prénom *",
                textAlign: TextAlign.left,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              TextFieldCustomer(
                label: "Nom *",
                textAlign: TextAlign.left,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              TextFieldCustomer(
                label: "Téléphone *",
                textAlign: TextAlign.left,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              TextFieldCustomer(
                label: "Email",
                textAlign: TextAlign.left,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              TextFieldCustomer(
                label: "30/09/1932",
                textAlign: TextAlign.left,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sexe",
                        style: themeData.textTheme.bodyText2!
                            .copyWith(fontSize: 12),
                      ),
                      Row(
                        children: [
                          Text(
                            "M",
                            style: themeData.textTheme.bodyText2!
                                .copyWith(fontSize: 16),
                          ),
                          Checkbox(
                            fillColor:
                                MaterialStateProperty.all(Colors.transparent),
                            side: MaterialStateBorderSide.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return const BorderSide(color: kRago);
                              } else {
                                return const BorderSide(color: kGreyColor);
                              }
                            }),
                            checkColor: kRago,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: m,
                            onChanged: (val) {
                              setState(() {
                                m = true;
                                f = false;
                              });
                            },
                          ),
                          Text(
                            "F",
                            style: themeData.textTheme.bodyText2!
                                .copyWith(fontSize: 16),
                          ),
                          Checkbox(
                            fillColor:
                                MaterialStateProperty.all(Colors.transparent),
                            side: MaterialStateBorderSide.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return const BorderSide(color: kRago);
                              } else {
                                return const BorderSide(color: kGreyColor);
                              }
                            }),
                            checkColor: kRago,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: f,
                            onChanged: (val) {
                              setState(() {
                                f = true;
                                m = false;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              LineWithCircleRoundConer(isEmptyOne: true, size: size),
              TextFieldCustomer(
                label: "Mot de passe *",
                isPassword: true,
                textAlign: TextAlign.left,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              TextFieldCustomer(
                label: "Confirmation du mot de passe *",
                isPassword: true,
                textAlign: TextAlign.left,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              RagoButtom(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.page);
                },
                descriprion: "S’inscrire",
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      foregroundColor: MaterialStateProperty.all(kWhiteColor),
                      overlayColor: MaterialStateProperty.all(
                        kGreyColor.withOpacity(.5),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
