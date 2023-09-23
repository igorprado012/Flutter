import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(context) {
    return const Text(
      'HERMES S.E',
      style: TextStyle(
        color: Colors.black87,
        fontSize: 64,
      ),
    );
  }
}
