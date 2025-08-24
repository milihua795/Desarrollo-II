import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Texto"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primer ejemplo: ¡Hola, mundo!
            Card(
              elevation: 6,
              margin: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '¡Hola, mundo!',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // Segundo ejemplo: Texto estilizado
            Card(
              elevation: 6,
              margin: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Texto estilizado en Flutter\ncon negrita, cursiva y espaciado',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


