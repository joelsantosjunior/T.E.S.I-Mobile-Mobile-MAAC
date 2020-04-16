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
      body: Center(
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
                alignment: AlignmentDirectional(0, 0.25),
                child: Text(
                  "  Buscando...",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                    fontSize: 30,
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
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
