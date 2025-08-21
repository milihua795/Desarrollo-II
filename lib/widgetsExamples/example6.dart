import 'package:flutter/material.dart';

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          // Si agregas un asset local, recuerda configurarlo en pubspec.yaml
          const Text("Ejemplo con imágenes en Flutter"),
        ],
      ),
    );
  }
}
