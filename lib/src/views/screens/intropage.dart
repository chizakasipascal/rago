import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rago/src/constante/assets.dart';

import 'package:flutter/services.dart';
import 'package:ragotheme/ragotheme.dart';

import '../../constante/route.dart';
import '../widgets/backgroundblur.dart';

dynamic initScreen;

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 6.0,
      width: isActive ? 6.0 : 6.0,
      decoration: BoxDecoration(
        color: isActive ? kRago : kGreyColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BuildBackground(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            Positioned(
              top: 40,
              right: 5,
              child: Container(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  onPressed: () =>
                      Navigator.popAndPushNamed(context, Routes.login),
                  child: Text(
                    'Skip',
                    style: themeData.textTheme.button,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: (size.height * .2).toDouble()),
              child: Column(
                children: <Widget>[
                  Container(
                    height: size.height - (size.height * .4).toDouble(),
                    padding: const EdgeInsets.only(top: 0),
                    decoration: const BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Lottie.asset(Assets.welcome),
                            ),
                            //const SizedBox(height: 100.0),
                            const Text(
                              'Rago vous souhaite la bienvenue.',
                            ),
                            const SizedBox(height: 15.0),
                            const Text(
                              'Le leader dans le mode FM et \nde la communications.',
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    Assets.logoRagoS,
                                  ),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    Assets.logoRagoS,
                                  ),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  _currentPage != _numPages - 1
                      ? MaterialButton(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.bounceInOut,
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: _buildPageIndicator(),
                              ),
                              const Spacer(),
                              Text(
                                'Next',
                                style: themeData.textTheme.button,
                              ),
                              const SizedBox(width: 10.0),
                              const Icon(
                                Icons.arrow_forward,
                                color: kGreyColor,
                                size: 13.0,
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
                  _currentPage == _numPages - 1
                      ? Container(
                          width: size.width,
                          height: 50,
                          color: Colors.green,
                          child: GestureDetector(
                            onTap: () => Navigator.popAndPushNamed(
                                context, Routes.login),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  'Get Started',
                                  style: themeData.textTheme.headline6!
                                      .copyWith(color: kWhiteColor),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
