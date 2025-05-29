import 'package:flutter/material.dart';

class Customheading extends StatelessWidget {
  final title;

  const Customheading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 1),
      child: Text(
        '$title',
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'assets/images/fonts/Poppins-Bold.ttf',
            fontSize: 18),
      ),
    );
  }
}
