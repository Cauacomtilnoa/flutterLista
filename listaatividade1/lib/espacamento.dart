import 'package:flutter/material.dart';

class Espacamento extends StatelessWidget {
  final double h;
  const Espacamento({super.key, required this.h});

  @override
  Widget build(BuildContext context) {
    return Container(height: h);
  }
}