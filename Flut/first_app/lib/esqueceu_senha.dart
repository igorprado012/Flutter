// ignore_for_file: no_leading_underscores_for_local_identifiers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EsqueceuSuaSenha extends StatelessWidget {
  const EsqueceuSuaSenha(Color color, Color color1, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _cpfController = TextEditingController();

    // void _dados() {
    //   String email = _emailController.text;
    //   String cpf = _cpfController.text;
    // }

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
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Insira seu E-mail:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      controller: _emailController,
                      keyboardType:
                          TextInputType.emailAddress, // Teclado de email
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Insira seu CPF:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      controller: _cpfController,
                      keyboardType: TextInputType.number, // Teclado de número
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ], // Aceita somente dígitos
                      decoration: const InputDecoration(
                        hintText: 'CPF',
                        border: OutlineInputBorder(),
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
                            'VOLTAR',
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
                            'ENVIAR',
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
            ),
          ),
        ),
      ),
    );
  }
}
