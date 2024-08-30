import 'package:flutter/material.dart';
 
class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileField('Nome', 'João da Silva'),
            _buildProfileField('Idade', '30 anos'),
            _buildProfileField('Peso', '70 kg'),
            _buildProfileField('Altura', '1.75 m'),
          ],
        ),
      ),
    );
  }
 
  Widget _buildProfileField(String label, String value) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(label),
        subtitle: Text(value),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Ação para editar o perfil
          },
        ),
      ),
    );
  }
}