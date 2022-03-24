import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget{
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto>{
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _campo1 = TextEditingController();
  TextEditingController _campo2 = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _campo1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Valor de depósito",
                  prefixText: "R\$ ",
                  labelText: "Conta Bancária",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 98, 137, 155),
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 98, 137, 155)
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 50, 29, 85)
                    )
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 181, 161, 214)
                    )
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.redAccent
                    )
                  )
                ),
                cursorColor: Colors.teal,
                style: const TextStyle(
                  color: Color.fromARGB(255, 98, 137, 155),
                  fontSize: 20
                ),
                validator: (texto) {
                  // ! -> garante que não é nulo
                  return texto!.length < 3 || texto.length > 6 ? 
                  "Entre 3 a 6 caracteres" : "";
                },
              ),
              TextFormField(
                controller: _campo2,
                validator: (texto){
                  return texto!.isEmpty ? "Texto em branco" : "";
                },
              ),
              const SizedBox(
                height: 50
              ),
              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    print(_campo1.text);
                  }
                }, 
                child: const Text("Clicar")
              )
            ],
          ),
        ),
      ),
    );
  }
}