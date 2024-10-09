import 'dart:convert';
import 'package:http/http.dart' as http;

class RacionaisModel {
  String? frase;
  String? autor;

  RacionaisModel({this.frase, this.autor});

  RacionaisModel.fromJson(Map<String, dynamic> json) {
    frase = json['frase'];
    autor = json['autor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['frase'] = this.frase;
    data['autor'] = this.autor;
    return data;
  }

  static Future<RacionaisModel> buscarFrases() async {
    final response =
        await http.get(Uri.parse('https://estevaorada.com/aulas/api/frases/'));

    if (response.statusCode == 200) {
      return RacionaisModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Falha ao obter frases do Racionais.');
    }
  }
}
