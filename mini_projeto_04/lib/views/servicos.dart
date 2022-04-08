import 'package:flutter/material.dart';

class ServicosView extends StatelessWidget {
  const ServicosView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/detalhe_servico.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Serviços", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.cyan
                      ),),
                  ),
                ],
              ),
              const SizedBox(height: 36,),
              const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie magna dolor, a mattis diam ultricies in. Suspendisse iaculis ornare accumsan. Nam in rutrum est. Etiam at condimentum tortor. Duis sit amet mi at ex rhoncus vestibulum ac semper arcu. Aenean rhoncus ante vel neque dictum condimentum. Sed placerat vehicula lorem nec maximus. Nulla consequat quam accumsan dictum fringilla. Sed a est nec mi ultricies sollicitudin non non massa. Sed vel consequat erat. Nullam molestie lorem eu vestibulum luctus. Maecenas sed libero vel sapien condimentum posuere non lacinia leo. Maecenas eget lorem tellus. Suspendisse potenti."),
            ],
          ),
        ),
      ),
    );
  }
}