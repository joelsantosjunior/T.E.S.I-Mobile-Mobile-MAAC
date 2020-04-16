import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/api/BeaconService.dart';
import 'package:maac_app/models/Beacon.dart';
import 'package:maac_app/screens/page_info_beacon.dart';

class BuscaBeacon extends StatelessWidget {
  BeaconService beaconService = new BeaconService();

  Beacon beacon;

  Future allBeacons(BuildContext context) async {
    
    List<Beacon> beacons = await beaconService.getAllBeacon();
    this.beacon = (beacons.toList()..shuffle()).first;

    return new Future.delayed(const Duration(seconds: 5), () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => PageInfoBeacon(beacon: this.beacon)
          )
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    allBeacons(context);
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
