import 'package:first_app/gradiente_container.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/abertura.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromRGBO(74, 229, 229, 0.992),
          Color.fromRGBO(225, 239, 239, 0.593),
        ),
      ),
    ),
  );
}
