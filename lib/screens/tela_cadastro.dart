import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      appBar: AppBar(
        title: Text(
          'Tela de Cadastro',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber[400],
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: 'Nome Completo',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                labelText: 'Telefone',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'CEP',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: 'Endereço',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: 'Bairro',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: 'Complemento',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: 'Usuário',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            //width: 10,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(100)),
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  'CADASTRAR',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      )),
    );
  }
}
