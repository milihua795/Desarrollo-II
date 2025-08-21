import 'package:flutter/material.dart';

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, color: Colors.red, size: 40),
            Icon(Icons.star, color: Colors.green, size: 40),
            Icon(Icons.star, color: Colors.blue, size: 40),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Fila de íconos con Column',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
