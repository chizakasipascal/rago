import 'package:flutter/material.dart';
import 'package:ragotheme/ragotheme.dart';

class PageNav extends StatefulWidget {
  const PageNav({Key? key}) : super(key: key);

  @override
  State<PageNav> createState() => _PageState();
}

class _PageState extends State<PageNav> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  double height = 20.0;
  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // const BuildBackground(
        //   child: ,
        // ),
        Scaffold(
          appBar: (_selectedIndex == 1 ||
                  _selectedIndex == 2 ||
                  _selectedIndex == 3)
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(80.0),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 0.0, left: 10, right: 10),
                      child: AppBar(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        centerTitle: true,
                        title: Text(
                          _selectedIndex == 1
                              ? "Mes tickets"
                              : _selectedIndex == 3
                                  ? "Téléphone"
                                  : "Historique",
                          style: themeData.textTheme.bodyText2!
                              .copyWith(color: kGreyColor, fontSize: 16),
                        ),
                        // actions: [
                        //   GestureDetector(
                        //     onTap: () => Navigator.pushNamed(
                        //         context, Routes.notificationscreen),
                        //     child: Container(
                        //       height: 40,
                        //       width: 40,
                        //       decoration: const BoxDecoration(
                        //         color: kGreyColor,
                        //         shape: BoxShape.circle,
                        //       ),
                        //     ),
                        //   )
                        // ],
                      )))
              : null,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: height,
                  child: const Text('data'),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: height,
                  child: const Text('data'),
                ),
                label: "Chat",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: height,
                  child: const Text('data'),
                ),
                label: "Historique",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: height,
                  child: const Text('data'),
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
            unselectedLabelStyle: themeData.textTheme.bodyText2,
            selectedLabelStyle: themeData.textTheme.bodyText2,
          ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const <Widget>[
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
            ],
            onPageChanged: (page) {
              setState(() {
                _selectedIndex = page;
                debugPrint(page.toString());
              });
            },
          ),
        ),
      ],
    );
  }
}
