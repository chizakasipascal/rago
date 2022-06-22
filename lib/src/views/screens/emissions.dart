import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rago/src/constante/assets.dart';

import 'package:ragotheme/ragotheme.dart';

class Emissions extends StatelessWidget {
  const Emissions({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: kRago,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: kRago,
                      width: 2,
                    ),
                  ),
                  child: SvgPicture.asset(
                    Assets.podcast,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              const Text(
                "AVOIR ACES A TOUTES LES ÉMISSIONS.",
              ),
              const SizedBox(height: 10),
              const Text(
                "EN TEMPS RÉELS OU EN REDIFFUSIONS",
              ),
              const Divider(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: size.height * .3,
                      width: size.width * .5,
                      decoration: BoxDecoration(
                        color: kGreyColor.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 10,
                            bottom: 10,
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Lottie.asset(Assets.favorite),
                            ),
                          ),
                          const Positioned(
                            left: 0,
                            right: 0,
                            bottom: 40,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Chaine\nFavorite",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: size.height * .3,
                      width: size.width * .5,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        border: Border.all(
                          color: kGreyColor.withOpacity(.3),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 10,
                            bottom: 10,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(Assets.radioOn),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 0,
                            right: 0,
                            bottom: 40,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Vos émissions",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          width: size.width,
          decoration: const BoxDecoration(
            color: kRago,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "DIFFUSER VOTRE ÉMISSION",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
