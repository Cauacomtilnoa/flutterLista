import 'package:flutter/material.dart';
import 'package:quiz/cardPergunta.dart';
import 'package:quiz/lista.dart';

List perguntas = Lista.perguntas;
class PaginaPerguntas extends StatefulWidget {
  const PaginaPerguntas({super.key});

  @override
  State<PaginaPerguntas> createState() => _PaginaPerguntasState();
}

class _PaginaPerguntasState extends State<PaginaPerguntas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Pergunta 1 de 10", style: TextStyle(color: Colors.white, fontSize: 30))),
        backgroundColor: Colors.orange[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text( perguntas[0]["pergunta"]),
          CardPergunta(textoPergunta: perguntas[0]["respostas"][0]),
          CardPergunta(textoPergunta: perguntas[0]["respostas"][1]),
          CardPergunta(textoPergunta: perguntas[0]["respostas"][2]),
          CardPergunta(textoPergunta: perguntas[0]["respostas"][3]),
        ],
      )
    );
  }
}