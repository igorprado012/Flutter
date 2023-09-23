// import 'package:first_app/styled_text.dart';
import 'package:first_app/botao_login.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlingment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.fromRGBO({super.key})
      : color1 = const Color.fromRGBO(74, 229, 229, 0.992),
        color2 = const Color.fromRGBO(225, 239, 239, 0.593);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlingment,
        ),
      ),
      child: const Center(
        child: BotaoLogin(),
      ),
    );
  }
}

// ou assim.
// class GradienContainer extends StatelessWidget {
//   const GradienContainer(this.color1, this.color2, {super.key});

//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [color1, color2],
//           begin: startAlignment,
//           end: endAlingment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hermes s.e'),
//       ),
//     );
//   }
// }
