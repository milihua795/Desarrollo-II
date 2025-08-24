import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container",
      theme: ThemeData(primarySwatch: Colors.teal),
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
        title: const Text("Container"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 220,
          height: 120,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade300, Colors.purple.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black87, width: 2),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Soy un Container mejorado',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                shadows: [
                  Shadow(
                    blurRadius: 4,
                    color: Colors.black54,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

