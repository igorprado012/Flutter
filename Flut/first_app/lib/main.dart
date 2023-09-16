import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(74, 229, 229, 0.992),
                Color.fromRGBO(225, 239, 239, 0.593),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: const Center(
            heightFactor: 3,
            child: Text(
              'HERMES S.E',
              textDirection: TextDirection.ltr,
              // TextDirection.ltr significa que o texto será lido da esquerda para direita.
              style: TextStyle(
                color: Colors.black87,
                fontSize: 64,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
