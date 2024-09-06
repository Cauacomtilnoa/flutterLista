import 'package:flutter/material.dart';
import 'package:listaatividade2/components/paginaPerfilCard.dart';



class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil',
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
          children: <Widget>[
            const SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/fotoQualquer.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt, color: Colors.white),
                        onPressed: () {
                          // Função para alterar a foto (não implementada)
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Informações Pessoais
            const PaginaPerfilCard(titulo: 'Nome', conteudo: 'João da Silva'),
            const PaginaPerfilCard(titulo: 'Idade', conteudo: '30 anos'),
            const PaginaPerfilCard(titulo: 'Peso', conteudo: '72 kg'),
            const PaginaPerfilCard(titulo: 'Altura', conteudo: '1,80 m'),
          ],
        ),
      ),
    );
  }

}
