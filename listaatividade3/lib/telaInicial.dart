import 'package:flutter/material.dart';
import 'package:listaatividade3/components/barraNavegacao.dart';
import 'package:listaatividade3/components/cardTelaInicial.dart';

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
        title: Text(
          "Netflix",
          style: TextStyle(color: Color.fromARGB(255, 197, 35, 23)),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            CardTelaInicial(titulo: "Popular On Netflix", url1: "assets/images/octopusTeacher.jpeg", url2: "assets/images/betterCallSaul.jpeg", url3: "assets/images/1899.jpeg", url4: "assets/images/blackMirror.jpeg"),
            CardTelaInicial(titulo: "Trending Now", url1: "assets/images/emilyInParis.jpeg", url2: "assets/images/theShining.jpeg", url3: "assets/images/wandinha.jpeg", url4: "assets/images/thePlatform.jpeg"),
            CardTelaInicial(titulo: "New Releases", url1: "assets/images/joker.jpeg", url2: "assets/images/azizler.jpeg", url3: "assets/images/deathNote.jpeg", url4: "assets/images/lordOfTheRings.jpeg")
          
          ],
        ),
      ),
      bottomNavigationBar: BarraNavegacao(),
    );
  }
}
