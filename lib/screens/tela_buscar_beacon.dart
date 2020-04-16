import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/api/BeaconService.dart';

class BuscaBeacon extends StatelessWidget {
  BeaconService beaconService = new BeaconService();

  void beaconById() async {
    await beaconService.getBeaconById('5e937ec7d6e07f0017441f75');
  }

    void allBeacons() async {
    await beaconService.getAllBeacon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
                  image: AssetImage("lib/imagens/bg.png"),
                  fit: BoxFit.fill)),
        child: Center(
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
                  alignment: AlignmentDirectional(0, 0.3),
                  child: Text(
                    "Aproxime-se de um item em exposição",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      fontSize: 16,
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
                    onPressed: (){},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
