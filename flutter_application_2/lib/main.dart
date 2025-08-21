import 'package:flutter_application_2/view/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodel/counter_viewmodel.dart';
import 'view/counter_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Contador MVVM',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}