import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maac_app/api/api.dart';
import 'package:maac_app/models/Visitante.dart';
import 'package:maac_app/util/constantes.dart';

class TelaCadastro extends StatelessWidget {

  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _cepController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _bairroController = TextEditingController();
  final _complementoController = TextEditingController();
  final _emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      appBar: AppBar(
        title: Text(
          Const().TELA_CADASTRO,
          style: TextStyle(
            color: Colors.black
          ),
        ),
      backgroundColor: Colors.amber[400],
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextFormField(
              controller: _nomeController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: Const().NOME_COMPLETO,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _telefoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: Const().TELEFONE,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _cepController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: Const().CEP,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _enderecoController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: Const().ENDERECO,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _bairroController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: Const().BAIRRO,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _complementoController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: Const().COMPLEMENTO,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: Const().EMAIL,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            
            Container(
              
              height: 50,
              //width: 10,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100)
              ),
              child: FlatButton(
                onPressed:(){
                  Visitante visitante  = new Visitante(this._nomeController.text, telefone: this._telefoneController.text, cep: this._cepController.text, endereco: this._enderecoController.text, bairro: this._bairroController.text, complemento: this._complementoController.text, email: this._emailController.text);
                  var data = visitante.toJson();     
                  Api api = new Api();
                  api.cadastrarVisistante(data);
                },
                child: Text(
                  Const().CADASTRAR,
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ),
            ),
          ],
        )
      ),
    );
  }
}
