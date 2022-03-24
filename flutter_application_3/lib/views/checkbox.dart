import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox
({ Key? key }) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _valorCheck1 = false, _valorCheck2 = true, _valorCheck3 = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Não selecionado"),
            Checkbox(
              value: _valorCheck1, 
              onChanged: (valor) {
                setState(() {
                  _valorCheck1 = valor!;
                });
              }
            ),
            const Text("Selecionado"),
            Checkbox(
              value: _valorCheck2, 
              onChanged: (valor){
                setState(() {
                  _valorCheck2 = valor!;
                });
              }),
            CheckboxListTile(
              title: const Text("Verde"),
              activeColor: Colors.lightGreen,
              subtitle: const Text("sub"),
              value: _valorCheck3, 
              onChanged: (valor) {
                setState(() {
                  _valorCheck3 = valor!;
                });
              }
            )
          ],
        ),
      ),
    );
  }
}