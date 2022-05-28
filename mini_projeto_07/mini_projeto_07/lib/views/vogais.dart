import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Vogais extends StatefulWidget {
  const Vogais({Key? key}) : super(key: key);

  @override
  State<Vogais> createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  AudioPlayer _audioPlayer = AudioPlayer();

  String p = "play";

  Icon _icon = const Icon(Icons.play_arrow);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (p.contains("play")) {
                String url =
                    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-12.mp3";
                _audioPlayer.play(url);

                setState(() {
                  p = "pause";
                  _icon = const Icon(Icons.pause);
                });
              } else {
                _audioPlayer.pause();

                setState(() {
                  p = "play";
                  _icon = const Icon(Icons.play_arrow);
                });
              }
            },
            icon: _icon,
          ),
          IconButton(
            onPressed: () {
              _audioPlayer.stop();

              setState(() {
                p = "play";
                _icon = const Icon(Icons.play_arrow);
              });
            },
            icon: const Icon(Icons.stop),
          )
        ],
      ),
    );
  }
}
