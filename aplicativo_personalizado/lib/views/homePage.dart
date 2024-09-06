import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Text('Texto da página inicial'),
          FilledButton(
            onPressed: () {
              
            },
            child: Text('Ligar/desligar modo escuro.'),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Seu nome'),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Clique Aqui")),
          Card(
            child: Column(
              children: [
                Text("Texto 1"),
                Text("Texto 2")
              ],
            ),
          )
        ],
      ),
    );
  }
}
