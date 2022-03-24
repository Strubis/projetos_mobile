import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/campo_texto.dart';
import 'package:flutter_application_3/views/checkbox.dart';
import 'package:flutter_application_3/views/radio.dart';
import 'package:flutter_application_3/views/slider.dart';
import 'package:flutter_application_3/views/switch.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Campo Texto",
    //home: CampoTexto()
    //home: CheckBox()
    //home: RadioButton()
    //home: SwitchButton()
    home: SliderButton()
  ));
}