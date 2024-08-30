import 'package:flutter/material.dart';
import 'package:listaatividade2/dicas.dart';
import 'package:listaatividade2/monitoramento.dart';
import 'package:listaatividade2/perfil.dart';

class BarraNavegacao extends StatefulWidget {
  const BarraNavegacao({super.key});

  @override
  State<BarraNavegacao> createState() => _BarraNavegacaoState();
}

class _BarraNavegacaoState extends State<BarraNavegacao> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 55, 138, 206),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: 'Monitorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Dicas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Colors.white,  
        unselectedItemColor: Colors.white, 
        showUnselectedLabels: true, 
        onTap: (index) {
          switch(index){  
            case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => Monitoramento()),);
            break;
            case 2:
            Navigator.push(context, MaterialPageRoute(builder: (context) => Dicas()),);
            break;
            case 3:
            Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil()),);
            break;
          }
        }
      );
  }
}