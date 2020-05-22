import 'package:flutter/material.dart';
import 'package:maac_app/components/my_page_home.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAAC',
      debugShowCheckedModeBanner: false,
      home: MyPageHome(),
      theme: ThemeData(
        primaryColor: Color(int.parse("0xFFEBBB41")),
      ),
    );
  }
}
