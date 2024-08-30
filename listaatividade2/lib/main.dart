import 'package:flutter/material.dart';
import 'package:listaatividade2/paginaInicial.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saúde em dia',
      home: const Paginainicial(),
    );
  }
}
