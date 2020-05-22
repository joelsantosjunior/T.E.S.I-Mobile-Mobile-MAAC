import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:maac_app/api/BeaconService.dart';
import 'package:maac_app/models/Beacon.dart';
import 'package:maac_app/screens/page_info_beacon.dart';

import 'dart:async';
import 'dart:io' show Platform;
import 'package:beacons_plugin/beacons_plugin.dart';
import 'dart:convert';

class BuscaBeacon extends StatefulWidget {
  @override
  _BuscaBeaconState createState() => _BuscaBeaconState();
}

class _BuscaBeaconState extends State<BuscaBeacon> {
  BeaconService beaconService = new BeaconService();

  Beacon beacon;
  BuildContext context;
  bool _isDisposed = false;

  final StreamController<String> beaconEventsController =
      StreamController<String>.broadcast();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    this.beaconEventsController.close();
    this._isDisposed = true;
    super.dispose();
  }

  Future<void> initPlatformState(BuildContext context) async {
    if (this._isDisposed) return;

    BeaconsPlugin.listenToBeacons(beaconEventsController);
    beaconEventsController.stream.listen(
        (data) async {
          if (data.isNotEmpty) {
            var beaconData = jsonDecode(data);
            await getBeaconById(context, beaconData['uuid']);
          }
        },
        onDone: () {},
        onError: (error) {
          print("Error: $error");
        });

    await BeaconsPlugin.runInBackground(true);

    if (Platform.isAndroid) {
      BeaconsPlugin.channel.setMethodCallHandler((call) async {
        if (call.method == 'scannerReady') {
          await BeaconsPlugin.startMonitoring;
        }
      });
    } else if (Platform.isIOS) {
      await BeaconsPlugin.startMonitoring;
    }
  }

  Future getBeaconById(BuildContext cntext, String id) async {
    Beacon founded = await beaconService.getBeaconById(id);
    setState(() {
      beacon = founded;
    });

    this.beaconEventsController.close();

    Navigator.push(
        cntext,
        MaterialPageRoute(
            builder: (context) => PageInfoBeacon(beacon: this.beacon)));
  }

  @override
  Widget build(BuildContext context) {
    initPlatformState(context);
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/imagens/bg.png"), fit: BoxFit.fill)),
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
                    onPressed: () {},
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
