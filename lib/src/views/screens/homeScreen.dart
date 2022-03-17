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
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: slateBlue, width: 2),
                          ),
                        );
                      },
                      itemCount: 20,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    ),
                  ),
                  const VerticalDivider(
                    width: 0,
                    thickness: 1,
                    color: grey,
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Container(
                          height: size.height / 2,
                          decoration: const BoxDecoration(color: red),
                          child: Expanded(
                              child: Column(
                            children: [
                              Row(
                                children: [Text("data")],
                              )
                            ],
                          )),
                        ),
                        const Divider(),
                        Container(
                          height: size.height / 2,
                          decoration: const BoxDecoration(color: blackColor),
                        ),
                      ],
                    ),
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
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Kids see a Ghost",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                ),
                              ),
                              Text(
                                "Kaby west and kitui",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: blackColor,
                        onPressed: () {},
                        child: const Icon(
                          Icons.pause,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
