import 'package:flutter/material.dart';

class PaginainicialCard extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final IconData icon;

  const PaginainicialCard({super.key, 
    required this.titulo,
    required this.subtitulo,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitulo),
      ),
    );
  }
}
