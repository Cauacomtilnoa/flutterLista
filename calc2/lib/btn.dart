import 'package:flutter/material.dart';

class Botao extends StatelessWidget {

  final VoidCallback onPressed;
  
  const Botao({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Regular'),
                const SizedBox(width: 16),
               
                FloatingActionButton(
                  onPressed: onPressed,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
      ],),
    );
  }
}