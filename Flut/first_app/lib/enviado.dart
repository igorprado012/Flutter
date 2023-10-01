// import 'dart:math';

import 'package:flutter/material.dart';

class Enviado extends StatelessWidget {
  const Enviado(Color color, Color color1, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          height: 322,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(74, 229, 229, 0.992),
                Color.fromRGBO(225, 239, 239, 0.593),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  child: SizedBox(
                    width: 300,
                    height: 110,
                    child: Text(
                      'Um e-mail foi enviado ao suporte solicitando a emissão de uma nova senha. \n'
                      'O prazo para resposta é de 48 horas.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          height: 1.25,
                          color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  child: Align(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'assets/images/aviao-f5Z.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1B1C1B),
                          foregroundColor: const Color(0xffdfae62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'OK',
                          style: TextStyle(
                            color: Color(0xFFDFAE62),
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
