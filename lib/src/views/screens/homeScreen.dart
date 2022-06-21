import 'package:flutter/material.dart';
import 'package:rago/src/constante/assets.dart';
import 'package:rago/src/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

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
                          return Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: kBlue, width: 3),
                                  image: const DecorationImage(
                                    image: AssetImage(Assets.radioOn),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const Text(
                                "Radio\n102.8fm",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: kGrey,
                                ),
                              ),
                              const Divider()
                            ],
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
                      color: kGrey,
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 10,
                                  right: 20,
                                  bottom: 10,
                                ),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Mishapi voici",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: kRed,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Profile >",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: kGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: SizedBox(
                                        height: 150,
                                        width: 150,
                                        // decoration: BoxDecoration(

                                        // image: const DecorationImage(
                                        //   fit: BoxFit.cover,
                                        //   image: NetworkImage(
                                        //       "https://i.ytimg.com/vi/aT_-kMaD1s4/maxresdefault_live.jpg"),
                                        // ),
                                        // ),
                                        child: Image.asset(
                                          Assets.logoMIshapi,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    SizedBox(
                                      height: 150,
                                      width: 70,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 45,
                                            width: 45,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: kGrey.withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Icon(Icons.add),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 45,
                                            width: 45,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: kGrey.withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child:
                                                  const Icon(Icons.play_arrow),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 45,
                                            width: 45,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: kGrey.withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Icon(
                                                  Icons.favorite_outline),
                                            ),
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
                                    color: kBlackColor,
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
                                    color: kGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "Orateurs",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: kBlackColor,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "20",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: kBlackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Horaire des émissions",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: kBlackColor,
                                        ),
                                      ),
                                      Text(
                                        "voir plus >",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    "Sports & Divertisment",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "06H00-09H00",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          color: kGrey,
                                        ),
                                      ),
                                      Text(
                                        " ALIN CHUMA",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                                const Divider(),
                                ListTile(
                                  title: const Text(
                                    "Sports & Divertisment",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "09h50-10h00",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          color: kGrey,
                                        ),
                                      ),
                                      Text(
                                        " KITOTKO sHUKURU",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                                const Divider(),
                                ListTile(
                                  title: const Text(
                                    "Information ya kwetu",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "10H-10h45",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          color: kGrey,
                                        ),
                                      ),
                                      Text(
                                        " ALIN CHUMA",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                                const Divider()
                              ],
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
                    color: kWhiteColor,
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
                                color: kBlackColor,
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
                                    color: kBlackColor,
                                  ),
                                ),
                                Text(
                                  "Kaby west and kitui",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: kGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor: kWhiteColor,
                          onPressed: () {},
                          child: Container(
                            margin: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(Assets.radioOff),
                                fit: BoxFit.cover,
                              ),
                            ),
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
