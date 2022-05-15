import 'package:flutter/material.dart';
import 'package:mini_projeto_05/assets/pages/login.dart';

import 'assets/pages/cadastro.dart';
import 'assets/pages/logado.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Login());
      case "/logado":
        return MaterialPageRoute(builder: (_) => Logado());
      case "/cadastre-se":
        return MaterialPageRoute(builder: (_) => Cadastro());
      default:
        _erroRoute();
    }

    throw '';
  }

  static Route<dynamic> _erroRoute() {
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
