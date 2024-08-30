import 'package:flutter/material.dart';
 
class Monitoramento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoramento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gráfico fictício (pode ser substituído por um pacote de gráficos real)
            Container(
              height: 200,
              color: Colors.blue[100],
              child: Center(child: Text('Gráfico de Peso', style: TextStyle(fontSize: 20))),
            ),
            SizedBox(height: 20),
            Text(
              'Entradas de Monitoramento',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Número fictício de entradas
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Entrada ${index + 1}'),
                      subtitle: Text('Data: 01/01/2024, Tipo: Peso, Valor: 70 kg'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // Ação para editar a entrada
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              // Ação para excluir a entrada
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}