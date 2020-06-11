import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AgradecimentoPage extends StatelessWidget {
  Future exitApp() async {
    return new Future.delayed(const Duration(seconds: 3), () {
      SystemNavigator.pop();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    exitApp();
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