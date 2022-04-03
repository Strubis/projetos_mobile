import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second window"),
      ),
    );
  }
}