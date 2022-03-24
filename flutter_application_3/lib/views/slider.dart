import 'package:flutter/material.dart';

class SliderButton extends StatefulWidget {
  const SliderButton({ Key? key }) : super(key: key);

  @override
  _SliderButtonState createState() => _SliderButtonState();
}

class _SliderButtonState extends State<SliderButton> {
  double _button1 = 12;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Slider(
            min: 10.0,
            max: 20.0,
            divisions: 10,
            value: _button1, 
            onChanged: (valor){
              setState(() {
                _button1 = valor;
              });
            }
          ),
          ElevatedButton(
            onPressed: (){
              print("Valor do slider: $_button1");
            }, 
            child: const Text("Clicar")
          )
        ],
      ),
    );
  }
}