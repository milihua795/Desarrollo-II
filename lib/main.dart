import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

// Importa tus ejemplos
import 'package:flutter_application_1/widgetsExamples/example1.dart';
import 'package:flutter_application_1/widgetsExamples/example2.dart';
import 'package:flutter_application_1/widgetsExamples/example3.dart';
import 'package:flutter_application_1/widgetsExamples/example4.dart';
import 'package:flutter_application_1/widgetsExamples/example5.dart';
import 'package:flutter_application_1/widgetsExamples/example6.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Libro de las Plantas",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const PlantsBook(),
    );
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // 👈 Home + 6 ejemplos
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: const Text(
            'Medicina Natural',
            style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
          ),
          bottom: const TabBar(
            isScrollable: true, // 👈 para que quepan todas las pestañas
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.text_fields), text: 'Texto'),
              Tab(icon: Icon(Icons.star), text: 'Row/Column'),
              Tab(icon: Icon(Icons.layers), text: 'Stack'),
              Tab(icon: Icon(Icons.crop_square), text: 'Container'),
              Tab(icon: Icon(Icons.image), text: 'Imágenes'),
              Tab(icon: Icon(Icons.code), text: 'Extra'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),   // Actividad 1
            Example1(),     // Texto
            Example2(),     // Row/Column
            Example3(),     // Stack
            Example4(),     // Container
            Example5(),     // Imágenes
            Example6(),     // Algún ejemplo extra
          ],
        ),
      ),
    );
  }
}
