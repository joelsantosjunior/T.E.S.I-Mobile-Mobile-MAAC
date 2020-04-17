import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:maac_app/models/Visitante.dart';

class VisitanteService {
  String token =
      "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlOTM3ZGFhZDZlMDdmMDAxNzQ0MWY3MyIsImlzQWRtaW4iOnRydWUsImlhdCI6MTU4NjcyODM0NSwiZXhwIjoxNTg5MzIwMzQ1fQ.QJohZgckYm1V9-sW6ZEKy3zOKFRJbbZt_ocTKCBTLyc";

  Future<Visitante> cadastrarVisistante(Map<String, dynamic> data) async {
    // FALTA COLOCAR UMA URL VALIDA

    final http.Response response = await http.post(
      'https://thawing-crag-60834.herokuapp.com/visitantes',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token,
      },
      body: jsonEncode(data),
    );

    print(response.body);
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Visitante.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Falha ao cadastrar novo visitante');
    }
  }

  Future<Visitante> getByPhoneId(String id) async {
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/visitantes?idCelular=' + id,
      headers: {HttpHeaders.authorizationHeader: token},
    );
    Iterable list = json.decode(response.body);
    List<Visitante> visitantes =
        list.map((model) => Visitante.fromJson(model)).toList();
    if(visitantes.length > 0)
      return visitantes[0];
    return null;
  }
}
