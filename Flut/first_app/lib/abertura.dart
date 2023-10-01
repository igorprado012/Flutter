import 'dart:async';

import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlingment = Alignment.bottomRight;

class Abertura extends StatelessWidget {
  const Abertura(this.color1, this.color2, {super.key});

  const Abertura.fromRGBO({super.key})
      : color1 = const Color.fromRGBO(74, 229, 229, 0.992),
        color2 = const Color.fromRGBO(225, 239, 239, 0.593);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginUser(color1, color2),
          ),
        );
      },
    );
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlingment,
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
