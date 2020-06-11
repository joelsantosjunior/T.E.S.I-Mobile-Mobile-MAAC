import 'package:flutter/material.dart';
import 'package:maac_app/pages/home.page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAAC',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(int.parse("0xFFEBBB41")),
      ),
    );
  }
}
