import 'package:flutter/material.dart';

// Importamos tu actividad 1
import 'screens/home_screen.dart';

// Importamos ejemplos de la carpeta widgetsExamples
import 'widgetsExamples/example1.dart' as example1;
import 'widgetsExamples/example2.dart' as example2;
import 'widgetsExamples/example3.dart' as example3;
import 'widgetsExamples/example4.dart' as example4;
import 'widgetsExamples/example5.dart' as example5;
import 'widgetsExamples/example6.dart' as example6;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Práctica de Widgets',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // 1 actividad + 6 ejemplos
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Práctica de Widgets'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Actividad 1'),
              Tab(text: 'Ejemplo 1'),
              Tab(text: 'Ejemplo 2'),
              Tab(text: 'Ejemplo 3'),
              Tab(text: 'Ejemplo 4'),
              Tab(text: 'Ejemplo 5'),
              Tab(text: 'Ejemplo 6'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Actividad 1: Tu app principal
            const HomeScreen(),

            // Actividad 2: ejemplos
            example1.MyExampleApp(), // Necesitamos poner cada ejemplo como widget
            example2.MyExampleApp(),
            example3.MyExampleApp(),
            example4.MyExampleApp(),
            example5.MyExampleApp(),
            example6.MyExampleApp(),
          ],
        ),
      ),
    );
  }
}
