import 'package:flutter/material.dart';
import 'package:flutter_radio/flutter_radio.dart';

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
          const Expanded(
            flex: 7,
            child: Icon(
              Icons.radio,
              size: 250,
              color: Colors.white,
            ),
          ),
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
