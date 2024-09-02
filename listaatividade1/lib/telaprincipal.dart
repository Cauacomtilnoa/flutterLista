import 'package:flutter/material.dart';
import 'package:listaatividade1/cardtarefa.dart';
import 'package:listaatividade1/Espacamento.dart';


class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Espacamento(h: 12),
          CardTarefa(titulo: "Estudar C#", descricao: "Estudar c#", cor: Colors.blue.shade300, icone: Icon(Icons.check)),
          Espacamento(h: 12),
          CardTarefa(titulo: "Estudar C#", descricao: "Estudar c#", cor: Colors.blue.shade300, icone: Icon(Icons.watch_later_outlined)),
          Espacamento(h: 12),
          CardTarefa(titulo: "Estudar C#", descricao: "Estudar c#", cor: Colors.blue.shade300, icone: Icon(Icons.check)),
          
          
        ],
      ),
    );
  }
}