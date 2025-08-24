import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row & Column',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Row y Column"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Fila de íconos con más variedad de colores
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.star, color: Colors.red, size: 40),
                    Icon(Icons.favorite, color: Colors.pink, size: 40),
                    Icon(Icons.star, color: Colors.green, size: 40),
                    Icon(Icons.favorite, color: Colors.blue, size: 40),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Fila de íconos organizada con Column',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Esto muestra cómo Row organiza íconos en una fila\n"
                  "y Column permite colocar texto debajo con buen espaciado.",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
