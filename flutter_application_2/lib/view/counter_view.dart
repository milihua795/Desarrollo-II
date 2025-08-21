import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterVM = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador con MVVM"),
        backgroundColor: const Color.fromARGB(255, 158, 4, 185),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 59, 10, 64), Color.fromARGB(255, 116, 30, 79),Color.fromARGB(255, 59, 10, 64), Color.fromARGB(255, 116, 30, 79),Color.fromARGB(255, 59, 10, 64), Color.fromARGB(255, 116, 30, 79),Color.fromARGB(255, 59, 10, 64), Color.fromARGB(255, 116, 30, 79)], // Colores del degradado
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${counterVM.count}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255), // número en blanco
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 150, 6, 157), // Botón verde
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: counterVM.increment,
                    child: const Text("Incrementar"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromARGB(255, 150, 6, 157), // Botón rojo
                      foregroundColor: Colors.white,
                    ),
                    onPressed: counterVM.decrement,
                    child: const Text("Decrementar"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 150, 6, 157), // Botón azul
                      foregroundColor: Colors.white,
                    ),
                    onPressed: counterVM.reset,
                    child: const Text("Resetear"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}