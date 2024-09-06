import 'package:aplicativo_personalizado/styleData.dart';
import 'package:aplicativo_personalizado/views/homePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: meuestilo,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}