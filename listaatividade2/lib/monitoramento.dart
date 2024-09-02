import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:listaatividade2/components/paginaMonitoramentoCard.dart';

class Monitoramento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monitoramento',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Gráfico Peso",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Container(
              height: 300,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(1, 90),
                        FlSpot(7, 65),
                        FlSpot(14, 77),
                        FlSpot(21, 87),
                        FlSpot(28, 63),
                      ],
                      isCurved: false,
                      color: Colors.blue,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                  titlesData: FlTitlesData(
                      topTitles: AxisTitles(
                        axisNameWidget: Text("Dias"),
                      ),
                      rightTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: true)),
                      leftTitles: AxisTitles(
                          axisNameWidget: Text('Peso(kg)'),
                          sideTitles: SideTitles(showTitles: false)),
                      bottomTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: true))),
                  minY: 0,
                  maxY: 100,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Entradas de Monitoramento',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 01/01/2024, Peso: 90kg"),
            PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 07/01/2024, Peso: 65kg"),
            PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 14/01/2024, Peso: 77kg"),
            PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 21/01/2024, Peso: 87kg"),
            PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 28/01/2024, Peso: 63kg")
          ],
        ),
      ),
    );
  }
}
