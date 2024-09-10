import 'package:flutter/material.dart';

class CardPergunta extends StatelessWidget {
  final String textoPergunta;
  const CardPergunta({super.key, required this.textoPergunta});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Card(
        color: Colors.orange,
       
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
          
          },
          child:  SizedBox(
            width: 300,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(textoPergunta,style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}