import 'dart:js';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.pushNamed(context, "/second-window");
        },
      ),
    );
  }
}