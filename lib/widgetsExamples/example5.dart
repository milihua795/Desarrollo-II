import 'package:flutter/material.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Imágenes",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
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
        title: const Text(" Imágenes"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  alignment: WrapAlignment.center,
                  children: [
                    buildImageCard(
                      "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                      "Búho",
                    ),
                    buildImageCard(
                      "https://cdn0.expertoanimal.com/es/razas/9/0/5/rana-arboricola-verde_509_0_orig.jpg",
                      "Rana",
                    ),
                    buildImageCard(
                      "https://cdn0.uncomo.com/es/posts/2/1/1/significado_del_zorro_como_animal_de_poder_48112_600.jpg",
                      "Zorro",
                    ),
                   
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Imagenes",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImageCard(String url, String title) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            url,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 120,
              height: 120,
              color: Colors.grey.shade300,
              child: const Icon(Icons.broken_image, size: 40, color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
