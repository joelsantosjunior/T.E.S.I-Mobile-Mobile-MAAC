import 'package:flutter/material.dart';
import 'package:maac_app/screens/tela_cadastro.dart';

class botao_cadastrar_visitar extends StatelessWidget {
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
                borderRadius: BorderRadius.circular(700)
              ),
              child: FlatButton(
                onPressed:(){},
                child: Text(
                  'VISITAR',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(700)
              ),
              child: FlatButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaCadastro())
                    );
                },
                child: Text(
                  'CADASTRAR',
                  style: TextStyle(
                    color: Colors.black
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

