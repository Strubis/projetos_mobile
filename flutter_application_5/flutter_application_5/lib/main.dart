import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/second.dart';
import 'views/home.dart';
import 'views/second.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/" : (context) => const Home(),
      "/second-window" : (context) => const Second(),
    },
  ));
}