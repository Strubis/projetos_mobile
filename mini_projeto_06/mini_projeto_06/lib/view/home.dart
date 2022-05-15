import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controllerTarefa = TextEditingController();

  List _listaTarefas = [];
  Map<String, dynamic> _ultimaTarefa = {};

  Future<File> _getFile() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/dados.json");
  }

  Future<String?> _lerArquivo() async {
    try {
      final arquivo = await _getFile();
      return arquivo.readAsString();
    } catch (exc) {
      return null;
    }
  }

  void initState() {
    super.initState();
    _lerArquivo().then((value) {
      setState(() {
        if (value != null) {
          _listaTarefas = json.decode(value);
        } else {
          _listaTarefas = [];
        }
      });
    });
  }

  void _salvarArquivo() async {
    File arquivo = await _getFile();
    String dados = json.encode(_listaTarefas);
    arquivo.writeAsString(dados);
  }

  void _salvarTarefa() {
    String _textoTarefa = _controllerTarefa.text;
    Map<String, dynamic> tarefa = {};

    tarefa['titulo'] = _textoTarefa;
    tarefa['realizada'] = false;

    setState(() {
      _listaTarefas.add(tarefa);
    });

    _salvarArquivo();
    _controllerTarefa.text = "";
  }

  Widget createListItem(context, index) {
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        _ultimaTarefa = _listaTarefas[index];
        _listaTarefas.removeAt(index);
        _salvarArquivo();

        final snackBar = SnackBar(
          duration: const Duration(seconds: 10),
          content: const Text("Tarefa Removida"),
          action: SnackBarAction(
            label: "Desfazer",
            onPressed: () {
              setState(() {
                _listaTarefas.insert(index, _ultimaTarefa);
              });

              _salvarArquivo();
            },
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      background: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.delete,
              color: Colors.white,
            )
          ],
        ),
      ),
      child: CheckboxListTile(
        title: Text(_listaTarefas[index]['titulo']),
        value: _listaTarefas[index]['realizada'],
        onChanged: (value) {
          setState(() {
            _listaTarefas[index]['realizada'] = value;
          });

          _salvarArquivo();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tarefas"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _listaTarefas.length,
              itemBuilder: createListItem,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Adicionar Tarefa"),
                  content: TextField(
                    controller: _controllerTarefa,
                    decoration: const InputDecoration(
                      labelText: "Digite sua tarefa",
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _salvarTarefa();
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.save,
                        color: Colors.green,
                      ),
                    ),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
