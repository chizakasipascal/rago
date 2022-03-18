import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rago/src/constante/assets.dart';
import 'package:rago/src/constante/fontSize.dart';
import 'package:rago/src/constante/icon_size.dart';
import 'package:rago/src/constante/route.dart';
import 'package:rago/src/utils/colors.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: 310,
              child: Container(
                width: size.width,
                height: size.height * .5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.appp),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 70,
                width: size.width,
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Positioned(
                      left: 170,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          Routes.emissions,
                        ),
                        child: Container(
                          width: size.width * .6,
                          height: 50,
                          color: slateBlue,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, left: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    "Programme",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: FontSize.small,
                                    ),
                                  ),
                                  Icon(
                                    Icons.radio,
                                    size: IconSize.sizeIcon,
                                    color: whiteColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          Routes.homeScreen,
                        ),
                        child: Container(
                          width: size.width * .54,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Acceuil",
                                  style: TextStyle(
                                    color: slateBlue,
                                    fontSize: FontSize.small,
                                  ),
                                ),
                                Icon(
                                  Icons.home,
                                  size: IconSize.sizeIcon,
                                  color: slateBlue,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                width: size.width,
                height: size.height * .67,
                decoration: const BoxDecoration(
                  color: slateBlue,
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(Assets.logoRago, fit: BoxFit.cover),
                    ),
                    Center(
                      child: SizedBox(
                        height: 250,
                        child: Lottie.asset(
                          Assets.wave,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
