import 'package:flutter/material.dart';
import 'views/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      primaryColor: const Color(0xff429162),
      scaffoldBackgroundColor: const Color(0xff429162),
    ),
  ));
}
