import 'package:flutter/material.dart';
import 'btn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Conteudo(),
        ),
      ),
    );
  }
}



class Conteudo extends StatefulWidget {
  const Conteudo({super.key});

  @override
  State<Conteudo> createState() => _ConteudoState();
}

class _ConteudoState extends State<Conteudo> {
  String texto='Texto original';

void mudaTexto(){
setState(() {
  texto='O texto mudou';
});

}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Column(
        
    children: [
    Row(children: [

    Botao(onPressed: mudaTexto),
    ],
    ),
    Row(children: [
      Text(texto),
    ],),

      ],
      
      
      )
    );
    
    
  }
}