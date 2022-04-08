import 'package:flutter/material.dart';

class ContatoView extends StatelessWidget {
  const ContatoView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/detalhe_contato.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Contato", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey
                      ),),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              const Text("atendimento@atmconsultoria.com.br"),
              const SizedBox(height: 16,),
              const Text("Telefone: (11) 3525-1522"),
              const SizedBox(height: 16,),
              const Text("Telefone Celular: (11) 97171-1522"),
            ],
          ),
        ),
      ),
    );
  }
}