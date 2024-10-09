import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frases_racionais/view/components/autor.dart';
import 'package:frases_racionais/view/components/copyright.dart';
import 'package:frases_racionais/view/components/frase.dart';
import 'package:frases_racionais/controller/principal_controller.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  PrincipalController controller = PrincipalController();
  
  @override
  void initState() {
    super.initState();
    criarFrase(); 
  }

  Future<void> criarFrase() async {
    
    final frase = await controller.buscarFrases();
    setState(() {
      controller.resultado = frase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FRASE ALEATÓRIA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.network(
              'https://i.imgur.com/U4CLXbU.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(controller.resultado),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  final frase = await controller.buscarFrases();
                  setState(() {
                    controller.resultado = frase;
                  });
                },
                child: Text("Gerar Frase")),
            SizedBox(
              height: 40,
            ),
            Copyright(),
          ],
        ),
      ),
    );
  }
}
