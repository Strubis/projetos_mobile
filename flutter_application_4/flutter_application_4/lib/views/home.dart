import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _gasController = TextEditingController();
  final TextEditingController _etController = TextEditingController();
  String _resultado = "";

  void calcular() {
    if (_formKey.currentState!.validate()) {
      double gas = double.parse(_gasController.text);
      double et = double.parse(_etController.text);

      if ((et / gas) >= 0.7) {
        setState(() {
          _resultado = "Melhor gasolina";
        });
      } else {
        setState(() {
          _resultado = "Melhor etanol";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade900,
      appBar: AppBar(
        title: const Text("Gasolina ou Etanol"),
        backgroundColor: Colors.amber.shade800,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/gas_et.png",
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    controller: _gasController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "5,999",
                      labelText: "Preço Gasolina",
                      labelStyle:
                          const TextStyle(color: Colors.white, fontSize: 24),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber.shade500,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                    validator: (text) {
                      return text!.isEmpty || double.parse(text) <= 0
                          ? "Texto Obrigatório e maior que 0"
                          : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    controller: _etController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "5,999",
                      labelText: "Preço Etanol",
                      labelStyle:
                          const TextStyle(color: Colors.white, fontSize: 24),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber.shade500,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                    validator: (text) {
                      return text!.isEmpty || double.parse(text) <= 0
                          ? "Texto Obrigatório e maior que 0"
                          : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcular();
                  },
                  child: const Text(
                    "Calcular",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 16, right: 16),
                    child: Text(
                      _resultado,
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
