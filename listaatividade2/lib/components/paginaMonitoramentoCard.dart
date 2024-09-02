import 'package:flutter/material.dart';

class PaginaMonitoramentoCard extends StatefulWidget {
  final String titulo;
  final String subtitulo;
  const PaginaMonitoramentoCard({super.key, 
  required this.titulo, 
  required this.subtitulo});

  @override
  State<PaginaMonitoramentoCard> createState() => _PaginaMonitoramentoCardState();
}

class _PaginaMonitoramentoCardState extends State<PaginaMonitoramentoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
                    child: ListTile(
                      title: Text(widget.titulo),
                      subtitle: Text(widget.subtitulo),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              
                            },
                          ),
                        ],
                      ),
                    ),
                  );
  }
}