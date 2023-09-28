import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginUser extends StatelessWidget {
  final Color color1;
  final Color color2;

  const LoginUser(this.color1, this.color2, {super.key});

  const LoginUser.fromRGBO({super.key})
      : color1 = const Color.fromRGBO(74, 229, 229, 0.992),
        color2 = const Color.fromRGBO(225, 239, 239, 0.593);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(
        color1: color1,
        color2: color2,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  final Color color1;
  final Color color2;

  const LoginPage({
    Key? key,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Você pode adicionar lógica de autenticação aqui.
    // Por enquanto, apenas imprimiremos os valores digitados.
    if (kDebugMode) {
      print('Username: $username');
      print('Password: $password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Evita o overflow na parte inferior da tela quando o teclado é exibido
      body: SingleChildScrollView(
        // Use SingleChildScrollView para permitir que o conteúdo seja rolado
        child: Container(
          height: MediaQuery.of(context)
              .size
              .height, // Defina a altura para preencher toda a tela
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color1, widget.color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 146,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200,
                    ),
                  ),
                  const Text(
                    'Hermes S.E',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Metal',
                      color: Color.fromARGB(255, 11, 11, 11),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'E-mail ou ID:',
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        color: Color.fromARGB(255, 5, 5, 5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    obscureText:
                        _obscureText, // Define o obscureText com base na variável _obscureText
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      suffixIcon: TextButton(
                        onPressed: () {
                          setState(() {
                            _obscureText =
                                !_obscureText; // Inverte o estado da senha obscurecida.
                          });
                        },
                        child: Text(
                          _obscureText ? 'Mostrar' : 'Ocultar',
                          style: const TextStyle(
                            color: Color.fromARGB(
                                255, 33, 65, 243), // Cor do texto do botão
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Adicione aqui a ação para "Esqueceu sua senha?"
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                          height: 1.25,
                          fontSize: 20,
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(246, 27, 28, 27),
                      foregroundColor: const Color(0xffdfae62),
                      minimumSize: const Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        height: 1.25,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                      ),
                    ),
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
