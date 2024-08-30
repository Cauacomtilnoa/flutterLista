import 'package:flutter/material.dart';
import 'package:listaatividade3/components/barraNavegacao.dart';

class Telainicial extends StatefulWidget {
  const Telainicial({super.key});

  @override
  State<Telainicial> createState() => _TelainicialState();
}

class _TelainicialState extends State<Telainicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Netflix", style: TextStyle(color: Color.fromARGB(255, 197, 35, 23)),),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar:BarraNavegacao() ,

    );
  }
}