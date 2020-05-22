import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/models/Beacon.dart';
import 'package:maac_app/screens/tela_agradecimento.dart';

import 'tela_buscar_beacon.dart';
import 'tela_cadastrar_visitar.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PageInfoBeacon extends StatelessWidget {
  final Beacon beacon;

  PageInfoBeacon({@required this.beacon});
  BuildContext context;

  void _tap(int index) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BotaoCadastrarVisitar()));
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

  Widget beaconContent(String type, String content) {
    Widget widgetContent;

    if (type == "texto") {
      widgetContent = Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Text(
              content,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  textBaseline: TextBaseline.alphabetic),
            ),
          ),
        ),
      );
    }

    if (type == "video") {
      YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: content,
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: true,
        ),
      );

      widgetContent = Container(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
          ),
        ),
      );
    }

    if (type == "imagem") {
      widgetContent = Container(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              // child: Image.asset(beacon.conteudo, fit: BoxFit.fill)),
              child: Image.network(content, fit: BoxFit.fill)),
        ),
      );
    }

    return widgetContent;
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
                child: beaconContent(
                    this.beacon.tipoConteudo, this.beacon.conteudo)),
          ),
          Container(
            width: double.infinity,
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
                        child:
                            Icon(Icons.search, color: Colors.white, size: 40.0),
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
