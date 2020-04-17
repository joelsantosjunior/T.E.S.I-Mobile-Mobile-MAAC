import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/models/Beacon.dart';
import 'package:maac_app/screens/tela_agradecimento.dart';

import 'tela_buscar_beacon.dart';
import 'tela_cadastrar_visitar.dart';

class PageInfoBeacon extends StatelessWidget {
  final Beacon beacon;

  PageInfoBeacon({@required this.beacon});
  BuildContext context;

  void _tap(int index) {
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BotaoCadastrarVisitar()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BuscaBeacon()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaSaida()));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            beacon.local,
          ),
             Expanded(
              child: Center(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(beacon.conteudo,
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
            ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: SingleChildScrollView(
                  child: AutoSizeText(
                beacon.legenda,
                style: TextStyle(color: Colors.white, fontSize: 15),
                maxLines: 7,
              )),
            ),
            color: Colors.black.withOpacity(.6),
          ),
          Container(
            child: Align(
              child: BottomNavigationBar(
                onTap: _tap,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.amber[400],
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.reply,
                          color: Color.fromARGB(255, 0, 0, 0), size: 40.0),
                      title: Text('')),
                  BottomNavigationBarItem(
                      icon: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: IconButton(
                            iconSize: 40,
                            icon: Icon(Icons.search, color: Colors.white), onPressed: () {},),
                      ),
                      title: Text('')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.highlight_off,
                          color: Color.fromARGB(255, 0, 0, 0), size: 40.0),
                      title: Text(''))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
