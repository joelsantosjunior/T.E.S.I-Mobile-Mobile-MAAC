import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/screens/tela_cadastrar_visitar.dart';
import '../constantes/page_home_const.dart';

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
              //Image.asset(
              //  'lib/imagens/Museu-de-Artes-Assis-Chateaubriand.jpg',
              //),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(PageHomeConst().SEJA,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        fontSize: 60,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(PageHomeConst().BEM,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        fontSize: 60,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(PageHomeConst().VINDO,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        fontSize: 60,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(PageHomeConst().frase1,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(PageHomeConst().frase2,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => button_cadastro_visita()));
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
