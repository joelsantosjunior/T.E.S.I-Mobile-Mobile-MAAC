import 'package:flutter/material.dart';

class PageInfoBeacon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'lib/imagens/noite_estrelada.jpg',
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(.6),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "Noite Estrelada é uma pintura de Vicent van Gogh de 1889. A obra retrata a vista da janela de um quarto do hospício de Saint-Rémy-de-Provence.",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
          ),
          Container(
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.amber[400],
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.reply, color: Color.fromARGB(255, 0, 0, 0), size: 40.0), title: Text('')),
                  BottomNavigationBarItem(icon: CircleAvatar(radius: 30, backgroundColor: Colors.black, child: IconButton(iconSize: 40, icon: Icon(Icons.search,color: Colors.white)),), title: Text('')),
                  BottomNavigationBarItem(icon: Icon(Icons.highlight_off, color: Color.fromARGB(255, 0, 0, 0), size: 40.0), title: Text(''))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}