import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:maac_app/models/Visitante.dart';

class Api {


  Future<Visitante> cadastrarVisistante(Map<String, dynamic> data) async {
  // FALTA COLOCAR UMA URL VALIDA
  
  final http.Response response = await http.post(
    'https://thawing-crag-60834.herokuapp.com/visitantes',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlOTM3ZGFhZDZlMDdmMDAxNzQ0MWY3MyIsImlzQWRtaW4iOnRydWUsImlhdCI6MTU4NjcyODM0NSwiZXhwIjoxNTg5MzIwMzQ1fQ.QJohZgckYm1V9-sW6ZEKy3zOKFRJbbZt_ocTKCBTLyc',
    },
    body: jsonEncode(data),
  );

  print(response.body);
  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Visitante.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Falha ao cadastrar novo visitante');
  }
}

}