import 'package:flutter/material.dart';

class ClienteView extends StatelessWidget {
  const ClienteView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Clientes"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/detalhe_cliente.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Clientes", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lime
                      ),),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Image.asset("assets/images/cliente1.png"),
              const Text("Empresa de Software", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              Image.asset("assets/images/cliente2.png"),
              const Text("Empresa de Auditoria", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}