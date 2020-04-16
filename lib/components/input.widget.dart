import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {

  var label = "";
  var controller = TextEditingController();

  InputWidget({@required this.controller, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: this.label,
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300))),
    );
  }
}
