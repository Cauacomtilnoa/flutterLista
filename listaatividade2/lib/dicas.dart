import 'package:flutter/material.dart';
import 'package:listaatividade2/components/paginaDicasCard.dart';

class Dicas extends StatelessWidget {
  const Dicas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
          const SizedBox(height: 20,),
          const Center(child: Text("Dicas", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.lightBlueAccent),
                labelText: 'Buscar Dicas',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.lightBlueAccent),
                ),
              ),
            ),
          ),
          const PaginaDicasCard(titulo: "Beba água", conteudo: "Beber água faz bem pra sua saúde", icone: Icons.bubble_chart)
        ],
      ),
    );
  }
}
