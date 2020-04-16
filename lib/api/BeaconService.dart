import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:maac_app/models/Beacon.dart';

class BeaconService {
  
  String token = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlOTM3ZGFhZDZlMDdmMDAxNzQ0MWY3MyIsImlzQWRtaW4iOnRydWUsImlhdCI6MTU4NjcyODM0NSwiZXhwIjoxNTg5MzIwMzQ1fQ.QJohZgckYm1V9-sW6ZEKy3zOKFRJbbZt_ocTKCBTLyc";

  
   Future<List<Beacon>> getAllBeacon() async{
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/beacons',
      headers: {
        HttpHeaders.authorizationHeader:token
      },
    );
    Iterable list = json.decode(response.body);
    return list.map((model) => Beacon.fromJson(model)).toList();
  }


   Future<Beacon> getBeaconById(String id) async{
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/beacons' + '/' + id,
      headers: {
        HttpHeaders.authorizationHeader:token
      },
    );
    return Beacon.fromJson(json.decode(response.body)); 
  }
}
