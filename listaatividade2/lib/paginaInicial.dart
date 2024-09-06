import 'package:flutter/material.dart';
import 'package:listaatividade2/components/barraNavegacao.dart';
import 'package:listaatividade2/components/paginaInicialCard.dart';

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
        title: const Center(
          child: Text(
            'Saúde em dia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Informações',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 99, 197, 208),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  PaginainicialCard(
                    titulo: 'Quantidade de Passos',
                    subtitulo: '10.000 passos',
                    icon: Icons.directions_walk,
                  ),
                  PaginainicialCard(
                    titulo: 'Pressão Arterial',
                    subtitulo: '120/80 mmHg',
                    icon: Icons.favorite,
                  ),
                  PaginainicialCard(
                    titulo: 'Próximas Consultas Médicas',
                    subtitulo: 'Consulta com Cardiologista em 30/08/2024',
                    icon: Icons.calendar_today,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BarraNavegacao(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () => {},
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }

}
