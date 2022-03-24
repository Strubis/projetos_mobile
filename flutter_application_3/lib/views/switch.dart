import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({ Key? key }) : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _button1 = false, _button2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Salvar e-mail"),
            value: _button1, 
            onChanged: (valor){
              setState(() {
                _button1 = valor;
              });
            }
          ),
          SwitchListTile(
            title: const Text("Salvar senha"),
            value: _button2, 
            onChanged: (valor){
              setState(() {
                _button2 = valor;
              });
            }
          )
        ],
      ),
    );
  }
}