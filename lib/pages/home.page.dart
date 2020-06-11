import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'package:maac_app/pages/menu.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[400],
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bemvindo.png"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuPage()));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FlareActor(
                          "assets/images/next.flr",
                          animation: "telaInicial",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
