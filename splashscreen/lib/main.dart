import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gerdau',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: 'assets/images/gerdau.png',
            nextScreen: MainScreen(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
            backgroundColor: Colors.blue));
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      
    );
  }
}