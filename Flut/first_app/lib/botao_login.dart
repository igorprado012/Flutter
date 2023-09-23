import 'package:flutter/material.dart';
import '';

class BotaoLogin extends StatefulWidget {
  const BotaoLogin({super.key});

  @override
  State<BotaoLogin> createState() {
    return _BotaoLoginState();
  }
}

class _BotaoLoginState extends State<BotaoLogin> {
  var activeDiceImage = 'assets/images/logo.png';

  void login() {
    setState(() {
      activeDiceImage = 'assets/images/icons.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 150),
        TextButton(
          onPressed: login,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 110,
            // ),
            foregroundColor: const Color.fromARGB(255, 248, 115, 5),
            textStyle: const TextStyle(
              fontSize: 38,
            ),
          ),
          child: const Text('LOGIN'),
        ),
      ],
    );
  }
}
