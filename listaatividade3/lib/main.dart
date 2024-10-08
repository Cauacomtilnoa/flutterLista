import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:listaatividade3/telaInicial.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 1800,
            splash: 'assets/images/netflix.gif',
            nextScreen: Telainicial(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            splashIconSize: 1000,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0)));
  }
}
