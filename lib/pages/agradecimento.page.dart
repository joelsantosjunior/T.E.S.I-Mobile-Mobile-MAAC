import 'package:flutter/material.dart';

class AgradecimentoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Obrigado",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        fontSize: 60,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Pela",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        fontSize: 60,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Visita!",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        fontSize: 60,
                        color: Colors.black)),
              ),
              
            ],
          ),
        ));
  }
}