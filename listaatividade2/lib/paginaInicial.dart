import 'package:flutter/material.dart';
import 'package:listaatividade2/components/barraNavegacao.dart';


class Paginainicial extends StatefulWidget {
  const Paginainicial({super.key});

  @override
  State<Paginainicial> createState() => _PaginainicialState();
}

class _PaginainicialState extends State<Paginainicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Saúde em dia', style: TextStyle(color: Colors.white , fontSize: 24),)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informações Fictícias',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                title: Text('Quantidade de Passos'),
                subtitle: Text('10.000 passos'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Pressão Arterial'),
                subtitle: Text('120/80 mmHg'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Próximas Consultas Médicas'),
                subtitle: Text('Consulta com Cardiologista em 30/08/2024'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BarraNavegacao(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white, size: 27,),
        backgroundColor: Colors.lightBlue,
        onPressed: () => {}
      ),
    );
  }
}
