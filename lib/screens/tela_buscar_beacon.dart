import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Buscabeacon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              child: FlareActor(
                "lib/imagens/buscando.flr",
                animation: "Record2",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Align(
                alignment: AlignmentDirectional(0, 0.25),
                child: Text(
                  "  Buscando...",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: FlatButton(
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 100.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
