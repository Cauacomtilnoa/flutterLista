import 'package:flutter/material.dart';

class PaginaPerfilCard extends StatelessWidget {
  final String titulo;
  final String conteudo;

  const PaginaPerfilCard({super.key, required this.titulo, required this.conteudo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            titulo,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Expanded(
            child: Text(
              conteudo,
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }
}