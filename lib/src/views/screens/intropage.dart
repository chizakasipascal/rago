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
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 7.0,
      width: isActive ? 7.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.black,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BuildBackground(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: () =>
                    Navigator.popAndPushNamed(context, Routes.login),
                child: const Text(
                  'Skip',
                ),
              ),
            ),
            SizedBox(
              height: 600.0,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
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
            _currentPage != _numPages - 1
                ? Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: MaterialButton(
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
                            Text('Next', style: themeData.textTheme.bodyText1),
                            const SizedBox(width: 10.0),
                            const Icon(
                              Icons.arrow_forward,
                              color: kGreyColor,
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : const Text(''),
            _currentPage == _numPages - 1
                ? Container(
                    width: double.infinity,
                    color: Colors.black,
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.popAndPushNamed(context, Routes.login),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            'Get Started',
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
