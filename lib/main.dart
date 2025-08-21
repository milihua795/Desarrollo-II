import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/info_screen.dart';
import 'package:flutter_application_1/screens/people_screen.dart';


// si después quieres incluir los ejemplos del PDF:
// import 'package:flutter_application_1/screens/home_examples.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Libro de las Plantas",
      home: PlantsBook(),
    );
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // número de pestañas
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          title: const Text(
            'Medicina Natural',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Plantas'),
              Tab(icon: Icon(Icons.widgets), text: 'Widgets'),
              Tab(icon: Icon(Icons.people), text: 'Personas'),
              Tab(icon: Icon(Icons.info), text: 'Info'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),        //  Tarjetas de plantas (usa custom_widgets)
            Center(child: Text("Ejemplos Widgets")), // luego aquí puedes poner HomeExamples()
            Center(child: Text("Personas")),
            Center(child: Text("Información")),
          ],
        ),
      ),
    );
  }
}
