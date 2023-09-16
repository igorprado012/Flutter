import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(98, 219, 232, 0.992),
                Color.fromRGBO(225, 239, 239, 0.593)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: const Center(
            child: Text(
              'HERMES S.E',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
