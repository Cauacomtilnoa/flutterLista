import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Quiz Time", style: TextStyle(color: Colors.white, fontSize: 30))),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/images/quiz-img.png'),
            height: 200,
          ),
          Center(
            child: 
            FilledButton(
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.pushNamed(context, '/PaginaPerguntas');
              }, 
              child: const Text('Iniciar Quiz')
              )
            ),
        ],
      )
    );
  }
}