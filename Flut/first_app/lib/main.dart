// import 'package:first_app/abertura.dart';
import 'package:first_app/confirmacao_enviar.dart';
// import 'package:first_app/esqueceu_senha.dart';
// import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ConfirmacaoEnviar(
          Color.fromRGBO(74, 229, 229, 0.992),
          Color.fromRGBO(225, 239, 239, 0.593),
        ),
      ),
    ),
  );
}
// const EsqueceuSuaSenha(Color color, Color color2, {Key? key})