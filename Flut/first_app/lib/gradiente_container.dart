import 'package:first_app/Styled_text.dart';
import 'package:flutter/material.dart';

class GradienContainer extends StatelessWidget {
  const GradienContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(74, 229, 229, 0.992),
            Color.fromRGBO(225, 239, 239, 0.593),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
