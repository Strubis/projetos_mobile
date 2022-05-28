import 'package:flutter/material.dart';
import 'package:mini_projeto_07/views/bichos.dart';
import 'package:mini_projeto_07/views/numeros.dart';
import 'package:mini_projeto_07/views/vogais.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aprenda Inglês"),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          tabs: const [
            Tab(
              text: "Bichos",
            ),
            Tab(
              text: "Números",
            ),
            Tab(
              text: "Vogais",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
