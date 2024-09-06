import 'package:flutter/material.dart';

class PaginaDicasCard extends StatelessWidget {
  final String titulo;
  final String conteudo;
  final IconData icone;
  const PaginaDicasCard({super.key, required this.titulo, required this.conteudo, required this.icone});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 241, 251, 255),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(
          icone,
          color: Colors.lightBlueAccent,
          size: 40,
        ),
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          conteudo,
          style: const TextStyle(color: Color.fromARGB(255, 81, 81, 81)),
        ),
      ),
    );
  }
}
