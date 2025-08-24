import 'package:flutter/material.dart';

class Example6 extends StatelessWidget {
  const Example6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo Extra"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.thumb_up),
          label: const Text("¡Me gusta Red velvet!"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

