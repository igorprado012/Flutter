import 'package:flutter/material.dart';

class ConfirmacaoEnviar extends StatelessWidget {
  final String cpf;
  final String email;

  const ConfirmacaoEnviar(
    Color color,
    Color color1, {
    required this.cpf,
    required this.email,
    Key? key,
  }) : super(key: key);

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
                  alignment: Alignment.center,
                  child: Text(
                    'ENVIAR?',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 25,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'CPF:',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  cpf,
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 18,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'E-MAIL:',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  email,
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 18,
                    color: Color(0xff000000),
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
                          'NÃO',
                          style: TextStyle(
                            color: Color(0xFFDFAE62),
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
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
                          'SIM',
                          style: TextStyle(
                            color: Color(0xFFDFAE62),
                            fontSize: 18,
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
