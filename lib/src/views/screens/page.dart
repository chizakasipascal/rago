import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:rago/src/views/screens/screens.dart';
import 'package:ragotheme/ragotheme.dart';

import '../widgets/widget.dart';

class PageNav extends StatefulWidget {
  const PageNav({Key? key}) : super(key: key);

  @override
  State<PageNav> createState() => _PageState();
}

class _PageState extends State<PageNav> {
  final PageController _pageController = PageController();
  late ScrollController controller;
  int _selectedIndex = 0;
  double height = 20.0;
  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: kRago,
          centerTitle: true,
          leading: const SizedBox.shrink(),
          title: Text(
            _selectedIndex == 0
                ? "Acceuiller"
                : _selectedIndex == 1
                    ? "Favorite"
                    : _selectedIndex == 2
                        ? "Poadcast"
                        : "Telephone",
            style: themeData.textTheme.headline6!.copyWith(
              color: kWhiteColor,
            ),
          ),
        ),
      ),
      bottomNavigationBar: ScrolHide(
        controller: controller,
        child: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: SizedBox(
                child: Icon(FeatherIcons.home),
              ),
              label: "Rago",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: height,
                child: const Icon(FeatherIcons.heart),
              ),
              label: "Favorie",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: height,
                child: const Icon(FeatherIcons.headphones),
              ),
              label: "Poadcast",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: height,
                child: const Icon(FeatherIcons.user),
              ),
              label: "Telephone",
            ),
          ],
          onTap: _onTappedBar,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          currentIndex: _selectedIndex,
          selectedItemColor: kRago,
          unselectedItemColor: kGreyColor,
          unselectedLabelStyle: themeData.textTheme.overline,
          selectedLabelStyle: themeData.textTheme.caption,
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeRago(controller: controller),
          Favorite(controller: controller),
          Poadcast(controller: controller),
          Telephone(controller: controller),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
            debugPrint(page.toString());
          });
        },
      ),
    );
  }
}
