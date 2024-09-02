import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:listaatividade1/modal.dart';

class CardTarefa extends StatelessWidget {
  final String titulo, descricao;
  final Icon icone;
  final Color cor;

  const CardTarefa(
      {super.key,
      required this.titulo,
      required this.descricao,
      required this.cor,
      required this.icone});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () async {
        ArtDialogResponse? response = await ArtSweetAlert.show(
          barrierDismissible: false,
          context: context,
          artDialogArgs: ArtDialogArgs(
            denyButtonText: "Cancel",
            title: "Você tem certeza ?",
            text: "Você não poderá voltar atrás da sua decisão!",
            confirmButtonText: "Sim, deletar",
            type: ArtSweetAlertType.warning,
          ),
        );

        if (response == null) {
          return;
        }

        if (response.isTapConfirmButton) {
          await ArtSweetAlert.show(
            context: context,
            artDialogArgs: ArtDialogArgs(
              type: ArtSweetAlertType.success,
              title: "Deletado!",
            ),
          );
          return;
        }
      },
      child: Card(
        child: ListTile(
          title: Text(titulo),
          subtitle: Text(descricao),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icone,
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const Modal(titulo: "Editar Tarefa", botao2texto: "Editar",);
                      });
                },
              ),
            ],
          ),
        ),
        color: cor,
      ),
    );
  }
}
