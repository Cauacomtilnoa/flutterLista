import 'package:flutter/material.dart';

class CardPergunta extends StatefulWidget {
  final String textoPergunta;
  const CardPergunta({super.key, required this.textoPergunta});

  @override
  State<CardPergunta> createState() => _CardPerguntaState();
}

class _CardPerguntaState extends State<CardPergunta> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.orange,
       
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          // onTap: () {
          //   setState(() {
              
          //   });
          // },
          child:  SizedBox(
            width: 300,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.textoPergunta,style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ));
  }
}