import 'package:flutter/material.dart';
import 'package:rago/src/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                            // decoration: const BoxDecoration(color: red),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    left: 10,
                                    right: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: const [
                                      Text(
                                        "Mishapi voici",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: blackColor,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Profile >",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://i.ytimg.com/vi/aT_-kMaD1s4/maxresdefault_live.jpg"),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 150,
                                        width: 70,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            SizedBox(
                                              height: 45,
                                              width: 45,
                                              child: Placeholder(),
                                            ),
                                            SizedBox(
                                              height: 45,
                                              width: 45,
                                              child: Placeholder(),
                                            ),
                                            SizedBox(
                                              height: 45,
                                              width: 45,
                                              child: Placeholder(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5.0, left: 10),
                                  child: Text(
                                    "Nom du journaliste",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: blackColor,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 5.0, left: 10, bottom: 10),
                                  child: Text(
                                    "Divertisment",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Expanded(
                            child: Container(
                              height: size.height * .5,
                              decoration:
                                  const BoxDecoration(color: blackColor),
                            ),
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
      ),
    );
  }
}
