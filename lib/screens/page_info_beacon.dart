import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/models/Beacon.dart';

class PageInfoBeacon extends StatelessWidget {
  final Beacon beacon;

  PageInfoBeacon({@required this.beacon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('lib/imagens/noite_estrelada.jpg',
                      fit: BoxFit.fill)),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: SingleChildScrollView(
                child: AutoSizeText(
                  beacon.conteudo,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  maxLines: 7,
                )
              ),
            ),
            color: Colors.black.withOpacity(.6),
          ),
          Container(
            child: Align(
              child: BottomNavigationBar(
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
                            icon: Icon(Icons.search, color: Colors.white)),
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
