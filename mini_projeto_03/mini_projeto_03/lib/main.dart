import 'package:flutter/material.dart';
import 'views/game.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Medieval War",
    home: Game(),
  ));
}
