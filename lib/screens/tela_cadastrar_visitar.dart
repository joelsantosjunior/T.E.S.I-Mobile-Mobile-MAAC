import 'package:flutter/material.dart';
import 'package:maac_app/screens/tela_buscar_beacon.dart';
import 'package:maac_app/screens/tela_cadastro.dart';
import 'package:maac_app/util/constantes.dart';

class BotaoCadastrarVisitar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(700)),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuscaBeacon()),
                    );
                  },
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
    );
  }
}
