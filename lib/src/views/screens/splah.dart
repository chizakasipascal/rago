import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ragotheme/ragotheme.dart';

import '../../constante/constante.dart';

class Splash extends StatefulWidget {
  const Splash({key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        Navigator.pushReplacementNamed(context, Routes.login);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
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
            ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                width: size.width,
                height: size.height * .67,
                decoration: const BoxDecoration(
                  color: kRago,
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        Assets.logoRago,
                        fit: BoxFit.cover,
                      ),
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
//  Positioned(
//               bottom: 0,
//               child: SizedBox(
//                 height: 70,
//                 width: size.width,
//                 child: Stack(
//                   clipBehavior: Clip.hardEdge,
//                   children: [
//                     Positioned(
//                       left: 170,
//                       bottom: 0,
//                       child: GestureDetector(
//                         onTap: () => Navigator.pushNamed(
//                           context,
//                           Routes.emissions,
//                         ),
//                         child: Container(
//                           width: size.width * .6,
//                           height: 50,
//                           color: kRago,
//                           child: Center(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.only(right: 10.0, left: 5.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: const [
//                                   Text(
//                                     "Programme",
//                                   ),
//                                   Icon(
//                                     Icons.radio,
//                                     color: kWhiteColor,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       child: GestureDetector(
//                         onTap: () => Navigator.pushNamed(
//                           context,
//                           Routes.homeScreen,
//                         ),
//                         child: Container(
//                           width: size.width * .54,
//                           height: 50,
//                           decoration: const BoxDecoration(
//                             color: kWhiteColor,
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(25),
//                               bottomRight: Radius.circular(25),
//                             ),
//                           ),
//                           child: Center(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: const [
//                                 Text(
//                                   "Acceuil",
//                                 ),
//                                 Icon(
//                                   Icons.home,
//                                   color: kRago,
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

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
