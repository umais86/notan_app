import 'package:flutter/material.dart';

class TextFieldLabel extends StatelessWidget {
  final String label;
  const TextFieldLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Outfit',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
