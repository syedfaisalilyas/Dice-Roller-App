import 'package:flutter/material.dart';
import 'package:testapp/gardient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 45, 25, 81), Color.fromARGB(255, 25, 10, 64)),
      ),
    ),
  );
}
