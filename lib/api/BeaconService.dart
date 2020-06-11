import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:maac_app/models/Beacon.dart';

class BeaconService {
  Future<List<Beacon>> getAllBeacon() async {
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/beacons',
    );
    Iterable list = json.decode(response.body);
    return list.map((model) => Beacon.fromJson(model)).toList();
  }

  Future<Beacon> getBeaconById(String id) async {
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/beacons' + '/?idBeacon=' + id,
    );
    Iterable list = json.decode(response.body);
    return list.map((model) => Beacon.fromJson(model)).toList()[0];
  }
}
