import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:listaatividade2/components/paginaMonitoramentoCard.dart';

class Monitoramento extends StatelessWidget {
  const Monitoramento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
            const Text("Gráfico Peso",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(1, 90),
                        const FlSpot(7, 65),
                        const FlSpot(14, 77),
                        const FlSpot(21, 87),
                        const FlSpot(28, 63),
                      ],
                      isCurved: false,
                      color: Colors.blue,
                      dotData: const FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                  titlesData: const FlTitlesData(
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
            const SizedBox(height: 20),
            const Text(
              'Entradas de Monitoramento',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 01/01/2024, Peso: 90kg"),
            const PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 07/01/2024, Peso: 65kg"),
            const PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 14/01/2024, Peso: 77kg"),
            const PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 21/01/2024, Peso: 87kg"),
            const PaginaMonitoramentoCard(
                titulo: "Entrada", subtitulo: "Data: 28/01/2024, Peso: 63kg")
          ],
        ),
      ),
    );
  }
}
