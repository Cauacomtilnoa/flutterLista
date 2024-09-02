import 'package:flutter/material.dart';
import 'package:listaatividade1/modal.dart';
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
          showDialog(context: context, 
          builder: (BuildContext context) {
            return const Modal(titulo: "Adicionar Tarefa", botao2texto: "Adicionar");
          }
          );
        },
      ),
    );
  }

  
}
