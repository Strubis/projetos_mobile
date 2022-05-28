import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  const Bichos({Key? key}) : super(key: key);

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  AudioCache _audioCache = AudioCache(prefix: "assets/audios/");

  _executar(String audio) {
    _audioCache.play(audio + ".mp3");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _audioCache.loadAll([
      "cao.mp3",
      "gato.mp3",
      "leao.mp3",
      "macaco.mp3",
      "ovelha.mp3",
      "vaca.mp3",
    ]);
  }

  @override
  Widget build(BuildContext context) {
    double l = MediaQuery.of(context).size.width;
    double a = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.9,
      scrollDirection: Axis.vertical,
      children: [
        GestureDetector(
          onTap: () {
            _executar("cao");
          },
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("gato");
          },
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("leao");
          },
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("macaco");
          },
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("ovelha");
          },
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vaca");
          },
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
