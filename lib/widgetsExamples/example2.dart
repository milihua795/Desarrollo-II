import 'package:flutter/material.dart';

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Este es un texto con estilo',
        style: TextStyle(fontSize: 24, color: Colors.blue),
      ),
    );
  }
}
