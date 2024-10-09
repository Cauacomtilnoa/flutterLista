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
    int incrementador = 0;
    int acertos = 0;

    void verificarRespos(int op){
      int respCorreta = perguntas[incrementador]['Alternativa correta'];
      
      if(incrementador + 1 == perguntas.length){
        Navigator.pushNamed(context, 
        '/PaginaFinal',
        arguments: acertos
        );
      }

      print('Pergunta Número $incrementador');

      if (op == respCorreta){
        setState(() {
          acertos++;
        });
      }
      if (incrementador < perguntas.length - 1) {
        setState(() {
          incrementador++;
        });
      }else{
        print("Quiz finalizado ! Total de acertos: ${acertos}");
      }
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("${incrementador+1} de 10",
                  style: TextStyle(color: Colors.white, fontSize: 30))),
          backgroundColor: Colors.orange[300],
        ),
        body: SizedBox(width: double.infinity,
          
      
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(perguntas[incrementador]["pergunta"]),


              GestureDetector(
                onTap: () {
                  verificarRespos(0);
                },
                child: CardPergunta(
                    textoPergunta: perguntas[incrementador]["respostas"][0]),
              ),
              GestureDetector(
                onTap: () {
                  verificarRespos(1);
                },
                child: CardPergunta(
                    textoPergunta: perguntas[incrementador]["respostas"][1]),
              ),
              GestureDetector(
                onTap: () {
                  verificarRespos(2);
                },
                child: CardPergunta(
                    textoPergunta: perguntas[incrementador]["respostas"][2]),
              ),
              GestureDetector(
                onTap: () {
                  verificarRespos(3);
                },
                child: CardPergunta(
                    textoPergunta: perguntas[incrementador]["respostas"][3]),
              ),



            ]),
          ),
        );
  }
}
