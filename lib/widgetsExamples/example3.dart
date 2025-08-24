import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack',
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
        title: const Text("Stack"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Fondo más grande con degradado
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade300, Colors.purple.shade300],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                    offset: Offset(4, 6),
                  ),
                ],
              ),
            ),
            // Capa intermedia con color sólido
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(0.85),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
            // Círculo encima para variar las formas
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
            ),
            // Texto encima de todo
            const Text(
              'Stack!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                shadows: [
                  Shadow(
                    blurRadius: 6,
                    color: Colors.black54,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

