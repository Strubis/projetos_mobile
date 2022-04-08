import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/cliente.dart';
import 'package:flutter_application_6/views/contato.dart';
import 'package:flutter_application_6/views/empresa.dart';
import 'package:flutter_application_6/views/home.dart';
import 'package:flutter_application_6/views/servicos.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (_) => const HomeView());
      case "/tela-empresa":
        return MaterialPageRoute(builder: (_) => const EmpresaView());
      case "/tela-clientes":
        return MaterialPageRoute(builder: (_) => const ClienteView());
      case "/tela-servicos":
        return MaterialPageRoute(builder: (_) => const ServicosView());
      case "/tela-contato":
        return MaterialPageRoute(builder: (_) => const ContatoView());
      default:
        _erroRoute();
    }

    throw '';
  }

  static Route<dynamic> _erroRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Erro de rota"),
        ),
        body: const Text("Tela não encontrada"),
      );
    });
  }
  
}