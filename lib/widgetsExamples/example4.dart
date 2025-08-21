import 'package:flutter/material.dart';

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(width: 200, height: 200, color: Colors.amber),
          Container(width: 150, height: 150, color: Colors.red),
          const Text(
            'Encima!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
