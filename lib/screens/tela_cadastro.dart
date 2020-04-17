import 'package:flutter/material.dart';
import 'package:maac_app/api/VisitanteService.dart';
import 'package:maac_app/components/input.widget.dart';
import 'package:maac_app/models/Visitante.dart';
import 'package:maac_app/util/constantes.dart';
import 'package:maac_app/util/deviceId.dart';

import 'tela_cadastrar_visitar.dart';

class TelaCadastro extends StatelessWidget {
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _cepController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _bairroController = TextEditingController();
  final _complementoController = TextEditingController();
  final _emailController = TextEditingController();

  BuildContext context;

  void createVisitante() async {
    final identifer = await DeviceId.getDeviceDetails();

    Visitante visitante = new Visitante(this._nomeController.text,
        telefone: this._telefoneController.text,
        cep: this._cepController.text,
        endereco: this._enderecoController.text,
        bairro: this._bairroController.text,
        idCelular: identifer[2],
        complemento: this._complementoController.text,
        email: this._emailController.text);

    var data = visitante.toJson();

    VisitanteService service = new VisitanteService();
    service.cadastrarVisistante(data);

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BotaoCadastrarVisitar()));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          Const().TELA_CADASTRO,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber[400],
      ),
      body: Container(
          margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: ListView(
            children: <Widget>[
              InputWidget(
                controller: this._nomeController,
                label: Const().NOME_COMPLETO,
              ),
              InputWidget(
                controller: this._emailController,
                label: Const().EMAIL,
              ),
              InputWidget(
                controller: this._telefoneController,
                label: Const().TELEFONE,
              ),
              InputWidget(
                controller: this._enderecoController,
                label: Const().ENDERECO,
              ),
              InputWidget(
                controller: this._bairroController,
                label: Const().BAIRRO,
              ),
              InputWidget(
                controller: this._complementoController,
                label: Const().COMPLEMENTO,
              ),
              InputWidget(
                controller: this._cepController,
                label: Const().CEP,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16, left: 35, right: 35),
                //width: 10,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(100)),
                child: FlatButton(
                    onPressed: createVisitante,
                    child: Text(
                      Const().CADASTRAR,
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          )),
    );
  }
}
