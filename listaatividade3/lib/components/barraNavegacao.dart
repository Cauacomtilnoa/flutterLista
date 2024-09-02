import 'package:flutter/material.dart';

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
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Início",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.videogame_asset_rounded),
          label: "Games",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ondemand_video_outlined),
          label: "Coming Soon",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download_outlined),
          label: "Downloads",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dehaze_rounded),
          label: "More",
        ),
      ],
        selectedItemColor: Colors.white,  
        unselectedItemColor: const Color.fromARGB(255, 182, 182, 182), 
        showUnselectedLabels: true, 
    );
  }
}