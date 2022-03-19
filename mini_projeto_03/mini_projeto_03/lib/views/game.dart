import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  Image imgPadrao = Image.asset("images/padrao.png");
  String resultado = "";

  void jogar(int escolha) {
    int numGerado = Random().nextInt(3);
    // Tipos de escolha: 1 -> escudo, 2 -> espada, 3-> cajado
    switch (numGerado) {
      case 0:
        setState(() {
          imgPadrao = Image.asset("images/escudo.png");

          if (escolha == 2) {
            resultado = "VITORIA COMPUTADOR";
          } else if (escolha == 3) {
            resultado = "VITORIA JOGADOR";
          } else {
            resultado = "EMPATE";
          }
        });
        break;
      case 1:
        setState(() {
          imgPadrao = Image.asset("images/espada.png");

          if (escolha == 3) {
            resultado = "VITORIA COMPUTADOR";
          } else if (escolha == 1) {
            resultado = "VITORIA JOGADOR";
          } else {
            resultado = "EMPATE";
          }
        });
        break;
      case 2:
        setState(() {
          imgPadrao = Image.asset("images/cajado.png");

          if (escolha == 1) {
            resultado = "VITORIA COMPUTADOR";
          } else if (escolha == 2) {
            resultado = "VITORIA JOGADOR";
          } else {
            resultado = "EMPATE";
          }
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Medieval War",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            imgPadrao,
            const Text("Faça sua escolha!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => jogar(1),
                  child: Image.asset("images/escudo.png"),
                ),
                GestureDetector(
                  onTap: () => jogar(2),
                  child: Image.asset("images/espada.png"),
                ),
                GestureDetector(
                  onTap: () => jogar(3),
                  child: Image.asset("images/cajado.png"),
                ),
              ],
            ),
            Text(
              resultado,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
