import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/screens/tela_cadastrar_visitar.dart';
import 'package:maac_app/util/constantes.dart';

class MyPageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Const().SEJA,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                    fontSize: 60,
                    color: Colors.black
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Const().BEM,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                    fontSize: 60,
                    color: Colors.black
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Const().VINDO,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                    fontSize: 60,
                    color: Colors.black
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Const().FRASE1,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Colors.white
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Const().FRASE2,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Colors.white
                  )
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BotaoCadastrarVisitar())
                  );
                },
                child: Container(
                  width: 200,
                  height: 200,
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: FlareActor(
                      "lib/imagens/next.flr",
                      animation: "telaInicial",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
