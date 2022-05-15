import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            children: [
              Image.asset('lib/assets/images/Logo.png'),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _usuarioController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "Usuário",
                    labelText: "Usuário *",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 24),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                  validator: (text) {
                    return text!.isEmpty ? "Usuário obrigatório!" : null;
                  },
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _senhaController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "Senha",
                    labelText: "Senha *",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 24),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                  validator: (text) {
                    return text!.isEmpty ? "Senha obrigatória!" : null;
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/logado");
                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 24,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/cadastre-se");
                    },
                    child: const Text(
                      "Cadastre-se",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
