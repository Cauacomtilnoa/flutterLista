import 'package:flutter/material.dart';

class Modal extends StatefulWidget {
  final String titulo;
  final String botao2texto;

  const Modal({
    super.key,
    required this.titulo,
    required this.botao2texto,
  });

  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  DateTime _selectedDate = DateTime.now(); 
  TimeOfDay _selectedTime = TimeOfDay.now(); 

  // Função para mostrar o seletor de data
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.titulo),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Nome da Tarefa",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Descrição da Tarefa",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Status da Tarefa",
            ),
          ),
          SizedBox(height: 16), 
          Row(
            children: [
              Expanded(child: Text("Data da Tarefa")),
              SizedBox(width: 8),
              TextButton(
                onPressed: () => _selectDate(context),
                child: Text(
                  "${_selectedDate.toLocal().toString().split(' ')[0]}", 
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 16), 
          Row(
            children: [
              Expanded(child: Text("Hora da Tarefa")),
              SizedBox(width: 8),
              TextButton(
                onPressed: () => _selectTime(context),
                child: Text(
                  "${_selectedTime.format(context)}", 
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Cancelar"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(widget.botao2texto),
        ),
      ],
    );
  }
}
