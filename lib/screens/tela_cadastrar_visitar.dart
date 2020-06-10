import 'package:flutter/material.dart';
import 'package:maac_app/api/VisitanteService.dart';
import 'package:maac_app/screens/tela_buscar_beacon.dart';
import 'package:maac_app/screens/tela_cadastro.dart';
import 'package:maac_app/util/constantes.dart';

import '../models/Visitante.dart';
import '../util/deviceId.dart';
import 'tela_cadastro.dart';

class BotaoCadastrarVisitar extends StatelessWidget {
  BuildContext context;

  void verifyIfExistUser() async {
    final identifer = await DeviceId.getDeviceDetails();
    String idCelular = identifer[2];

    VisitanteService service = new VisitanteService();
    Visitante visitante = await service.getByPhoneId(idCelular);
    if (visitante != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuscaBeacon()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaCadastro()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      backgroundColor: Color(int.parse("0xFFFAECCA")),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/imagens/cadastro.png"),
                fit: BoxFit.fill)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(700)),
                child: FlatButton(
                    onPressed: this.verifyIfExistUser,
                    child: Text(
                      Const().VISITAR,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: 350,
                child: OutlineButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(700)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaCadastro()));
                    },
                    borderSide: BorderSide(
                      color: Colors.black, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 3, //width of the border
                    ),
                    child: Text(
                      Const().CADASTRAR,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
