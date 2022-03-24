import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({ Key? key }) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String _escolhaRadio = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            RadioListTile(
              title: const Text("Radio Button"),
              activeColor: Colors.redAccent,
              value: "Vermelho", 
              groupValue: _escolhaRadio, 
              onChanged: (escolha){
                setState(() {
                  _escolhaRadio = escolha.toString();
                });
              }
            ),
            RadioListTile(
              title: const Text("Radio Button 2"),
              activeColor: Colors.lightGreen,
              value: "Verde", 
              groupValue: _escolhaRadio, 
              onChanged: (escolha){
                setState(() {
                  _escolhaRadio = escolha.toString();
                });
              }
            ),
            ElevatedButton(
              onPressed: (){
                print("Selecionado: $_escolhaRadio");
              },
              child: const Text("Clicar")
            )
          ],
        ),
      ),
    );
  }
}