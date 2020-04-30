import 'package:flutter/material.dart';

class TextoBox extends StatelessWidget {
  final String rotulo;
  final String dica;
  final TextEditingController controller;
  final TextInputType keyType;

  TextoBox({this.dica, this.rotulo, this.controller, this.keyType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        obscureText: false,
        controller: controller,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: keyType,
      ),
    );
  }
}
