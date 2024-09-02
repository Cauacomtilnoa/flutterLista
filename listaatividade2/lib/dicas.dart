import 'package:flutter/material.dart';
import 'package:listaatividade2/components/paginaDicasCard.dart';

class Dicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dicas de Saúde',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(child: Text("Dicas", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.lightBlueAccent),
                labelText: 'Buscar Dicas',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.lightBlueAccent),
                ),
              ),
            ),
          ),
          PaginaDicasCard(titulo: "Beba água", conteudo: "Beber água faz bem pra sua saúde", icone: Icons.bubble_chart)
        ],
      ),
    );
  }
}
