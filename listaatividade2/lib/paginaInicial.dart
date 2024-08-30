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
      body: Center(
        child: Text(
          'Body',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BarraNavegacao()
    );
  }
}
