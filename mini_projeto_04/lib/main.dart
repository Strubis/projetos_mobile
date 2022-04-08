import 'package:flutter/material.dart';
import 'package:flutter_application_6/route_generator.dart';

void main(){
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}