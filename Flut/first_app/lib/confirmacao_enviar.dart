import 'package:flutter/material.dart';

class ConfirmacaoEnviar extends StatelessWidget {
  const ConfirmacaoEnviar(Color color, Color color2, {Key? key})
      : super(key: key);

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              height: 1.2575,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: '\n\n',
                              ),
                              TextSpan(
                                text: 'ENVIAR',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 25,
                                  height: 1.25,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '?\n',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 25,
                                  height: 1.60,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 38,
                          height: 110,
                          child: Image.asset(
                            'assets/images/aviao-rgF.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 112,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          height: 1.25,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'CPF:\n',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20,
                              height: 1.25,
                              decoration: TextDecoration.underline,
                              color: Color(0xff000000),
                              decorationColor: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: '123.456.789-00',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              height: 1.25,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 208,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                          height: 1.25,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'E-MAIL:\n',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20,
                              height: 1.25,
                              decoration: TextDecoration.underline,
                              color: Color(0xff000000),
                              decorationColor: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'ALGUEM@ALGUEM.COM.BR',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              height: 1.25,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center the following Row
                    children: [
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
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFDFAE62),
                                  fontSize: 18,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
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
                                textAlign: TextAlign.center,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
