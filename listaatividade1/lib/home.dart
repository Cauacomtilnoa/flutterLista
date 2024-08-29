import 'package:flutter/material.dart';
import 'package:listaatividade1/telaprincipal.dart';

class paginaInicial extends StatefulWidget {
  const paginaInicial({super.key});

  @override
  State<paginaInicial> createState() => _paginaInicialState();
}

class _paginaInicialState extends State<paginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Lista de tarefas")),
        backgroundColor: Color.fromARGB(255, 60, 129, 207),
      ),
      body: const TelaPrincipal(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        child: Icon(Icons.add_circle),
        onPressed: () {
          _showAddTaskDialog();
        },
      ),
    );
  }

  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Adicionar Tarefa"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Nome da Tarefa",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Descrição da Tarefa",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Status da Tarefa"
                ),
              ), 

            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () {
                
                Navigator.of(context).pop(); 
              },
              child: Text("Adicionar"),
            ),
          ],
        );
      },
    );
  }
}
