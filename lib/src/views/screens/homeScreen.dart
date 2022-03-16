import 'package:flutter/material.dart';
import 'package:rago/src/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              left: 0,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 48,
                          width: 48,
                          margin: const EdgeInsets.all(5.0),
                          decoration: const BoxDecoration(
                            color: slateBlue,
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                      itemCount: 20,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: size.height / 9,
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      blurRadius: 1,
                      spreadRadius: 2,
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
