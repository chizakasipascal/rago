import 'package:flutter/material.dart';
import 'package:rago/src/constante/route.dart';
import 'package:ragotheme/ragotheme.dart';
import '../../constante/assets.dart';
import '../../constante/splashRadiusIconsButtom.dart';
import '../widgets/backgroundblur.dart';
import '../widgets/textbox/text_box.dart';

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
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: size.height * .4,
              width: size.width,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 3),
                        color: kGreyColor.withOpacity(.5),
                        blurRadius: 2.0,
                        spreadRadius: 2.0)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: kRago),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: buildTextBox(
                          hint: "E-mail",
                          suffixIcon: IconButton(
                            splashRadius: SplashRadiusIcons.splashRadius,
                            onPressed: () {},
                            icon: const Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: kRago),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: buildTextBox(
                          hint: "Mot de passe",
                          isPassword: true,
                          suffixIcon: IconButton(
                            splashRadius: SplashRadiusIcons.splashRadius,
                            onPressed: () {},
                            icon: const Icon(Icons.lock),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          onPressed: () => Navigator.pushReplacementNamed(
                              context, Routes.acceuil),
                          child: const Text(
                            "Connexion",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -40,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 3),
                          color: kGreyColor.withOpacity(.5),
                          blurRadius: 2.0,
                          spreadRadius: 2.0)
                    ]),
                child: Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      Assets.logoRagoS,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
