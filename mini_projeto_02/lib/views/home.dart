import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _texts = [
    "Se não gosta de alguma coisa, mude-a. Se não puder mudá-la, mude a sua atitude. Não reclame.” – Maya Angelou",
    "Viver é a coisa mais rara do mundo. A maioria das pessoas apenas existe. - Oscar Wilde",
    "Os professores abrem a porta, mas você deve entrar por você mesmo.",
    "Imagine uma nova história para sua vida e acredite nela."
  ];

  String generatedText = "Click in the button!";

  void randomNumber() {
    int number = Random().nextInt(_texts.length);

    setState(() {
      generatedText = _texts[number];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coach Motivacional"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/coachMotivacional.png'),
            Text(
              generatedText,
              style: const TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: randomNumber,
              child: const Text("New text!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 73, 157, 241)),
            )
          ],
        ),
      ),
    );
  }
}
