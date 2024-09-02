import 'package:flutter/material.dart';

class CardTelaInicial extends StatelessWidget {
  final String titulo;
  final String url1;
  final String url2;
  final String url3;
  final String url4;

  const CardTelaInicial({super.key, required this.titulo,required this.url1, required this.url2, required this.url3, required this.url4});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      titulo,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 202, 202, 202),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            url1,
                            fit: BoxFit.fill,
                            width: 120,
                          )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            url2,
                            fit: BoxFit.fill,
                            width: 120,
                          )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            url3,
                            fit: BoxFit.fill,
                            width: 120,
                          )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            url4,
                            fit: BoxFit.fill,
                            width: 120,
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}