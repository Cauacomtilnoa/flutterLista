import 'package:flutter/material.dart';

class PaginaFinal extends StatefulWidget {
  const PaginaFinal({super.key});

  @override
  State<PaginaFinal> createState() => _PaginaFinalState();
}

class _PaginaFinalState extends State<PaginaFinal> {
  @override
  Widget build(BuildContext context) {
  final int acertos = ModalRoute.of(context)!.settings.arguments as int;
String texto = acertos > 1 ? 'respostas' : "resposta";

    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Final",
                  style: TextStyle(color: Colors.white, fontSize: 30))),
          backgroundColor: Colors.orange[300],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Resultado"),
              Text("Você acertou ${acertos} ${texto}  de  10 questões"),
              FilledButton(onPressed: () {Navigator.pushNamed(context, '/PaginaInicial');}, child: const Text('Jogar Novamente'), style: TextButton.styleFrom(backgroundColor: Colors.orange)),
            ],
          ),
        ));
  }
}
