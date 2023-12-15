import 'package:flutter/material.dart';

class textpartclass extends StatelessWidget {
  const textpartclass(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
