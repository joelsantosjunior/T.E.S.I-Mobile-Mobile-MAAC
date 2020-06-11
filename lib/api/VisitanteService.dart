import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:maac_app/models/Visitante.dart';

class VisitanteService {
  Future<Visitante> cadastrarVisistante(Map<String, dynamic> data) async {
    final http.Response response = await http.post(
      'https://thawing-crag-60834.herokuapp.com/visitantes',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      return Visitante.fromJson(json.decode(response.body));
    } else {
      throw Exception('Falha ao cadastrar novo visitante');
    }
  }

  Future<Visitante> getByPhoneId(String id) async {
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/visitantes?idCelular=' + id,
    );
    Iterable list = json.decode(response.body);
    List<Visitante> visitantes =
        list.map((model) => Visitante.fromJson(model)).toList();

    if (visitantes.length > 0) return visitantes[0];
    return null;
  }
}
