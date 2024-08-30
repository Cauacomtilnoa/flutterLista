import 'package:flutter/material.dart';
 
class Dicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicas de Saúde'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Buscar Dicas',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Número fictício de dicas
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text('Dica de Saúde ${index + 1}'),
                    subtitle: Text('Descrição da dica ${index + 1}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}