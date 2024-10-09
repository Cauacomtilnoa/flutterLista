import 'package:flutter/material.dart';
import 'package:frases_racionais/model/racionais_model.dart';


class PrincipalController{
  String resultado = "";
  Future<String> buscarFrases() async{
    
    RacionaisModel racionais = RacionaisModel();
    racionais = await RacionaisModel.buscarFrases();

    return "${racionais.frase} \n ${racionais.autor}";
  }
}