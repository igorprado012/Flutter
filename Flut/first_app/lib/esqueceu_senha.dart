import 'package:first_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class EsqueceuSuaSenha extends StatelessWidget {
  final TextEditingController _cpfController = TextEditingController();
  Color color1;
  Color color2;

  EsqueceuSuaSenha(this.color1, this.color2, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            color1,
            color2,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Insira seu CPF:',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontFamily: 'Quicksand',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextField(
              controller: _cpfController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                hintText: 'CPF',
                // Customize the border color here:
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue, // Change to your desired color
                    width: 2.0, // Change to your desired width
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(
                        255, 0, 0, 0), // This is the default border color
                    width: 1.0, // This is the default border width
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginUser(
                        color1 = const Color.fromRGBO(74, 229, 229, 0.992),
                        color2 = const Color.fromRGBO(225, 239, 239, 0.593),
                      ),
                    ),
                  );
                },
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
              ElevatedButton(
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
            ],
          ),
        ],
      ),
    );
  }
}
