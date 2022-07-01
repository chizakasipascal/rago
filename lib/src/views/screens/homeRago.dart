import 'package:flutter/material.dart';
import 'package:flutter_radio/flutter_radio.dart';
import 'package:ragotheme/ragotheme.dart';

class HomeRago extends StatefulWidget {
  const HomeRago({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  State<HomeRago> createState() => _HomeRagoState();
}

class _HomeRagoState extends State<HomeRago> {
  String url = "https://dreamsiteradiocp5.com/proxy/rmcongogoma?mp=/stream";

  bool isPlaying = false;
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    audioStart();
  }

  Future<void> audioStart() async {
    await FlutterRadio.audioStart();
    print('Audio Start OK');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade900,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Image.network(
                "https://www.radiomaria.cd/wp-content/uploads/2022/05/logo-170x170.png"),
          ),
          Text("Radio Maria FM Nord-kivu",
              style: themeData.textTheme.bodyText2),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Align(
              alignment: FractionalOffset.center,
              child: IconButton(
                icon: isPlaying
                    ? const Icon(
                        Icons.pause_circle_outline,
                        size: 80,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                        size: 80,
                      ),
                onPressed: () {
                  setState(() {
                    FlutterRadio.play(url: url);
                    isPlaying = !isPlaying;
                    isVisible = !isVisible;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
