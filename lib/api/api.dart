import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:maac_app/models/Visitante.dart';

class Api {


  Future<Visitante> cadastrarVisistante(Map<String, dynamic> data) async {
  // FALTA COLOCAR UMA URL VALIDA
  
  // final http.Response response = await http.post(
  //   'https://jsonplaceholder.typicode.com/albums',
  //   headers: <String, String>{
  //     'Content-Type': 'application/json; charset=UTF-8',
  //   },
  //   body: jsonEncode(data),
  // );
  // if (response.statusCode == 201) {
  //   // If the server did return a 201 CREATED response,
  //   // then parse the JSON.
  //   return Visitante.fromJson(json.decode(response.body));
  // } else {
  //   // If the server did not return a 201 CREATED response,
  //   // then throw an exception.
  //   throw Exception('Falha ao cadastrar novo visitante');
  // }
}

}