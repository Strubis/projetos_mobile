import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/empresa.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(height: 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(
                      context, "/tela-empresa"
                    );
                  },
                  child: Image.asset("assets/images/menu_empresa.png"),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(
                      context, "/tela-servicos"
                    );
                  },
                  child: Image.asset("assets/images/menu_servico.png"),
                ),
              ],
            ),
            const SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(
                      context, "/tela-clientes");
                  },
                  child: Image.asset("assets/images/menu_cliente.png"),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(
                      context, "/tela-contato");
                  },
                  child: Image.asset("assets/images/menu_contato.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}