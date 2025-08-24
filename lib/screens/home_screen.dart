import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> plants = const [
    {
      "title": "Menta",
      "author": "Gabriela Zúñiga",
      "imageUrl":
          "https://es.lorealparisusa.com/-/media/project/loreal/brand-sites/oap/americas/us/ingredients-library/loreal-paris-makeup-peppermint-oil-2000x900.jpg",
    },
    {
      "title": "Manzanilla",
      "author": "Juan Pérez",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLJoGZwf160VR5pDjdK39KVDP38lycHR4cbw&s",
    },
    {
      "title": "Aloe Vera",
      "author": "Lucía Ramírez",
      "imageUrl":
          "https://cdn11.bigcommerce.com/s-ww3msiylzo/product_images/uploaded_images/aloe-vera-blog.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: plants.length,
        itemBuilder: (context, index) {
          final plant = plants[index];
          return PlantsCard(
            title: plant["title"]!,
            author: plant["author"]!,
            imageUrl: plant["imageUrl"]!,
          );
        },
      ),
    );
  }
}

class PlantsCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;

  const PlantsCard({
    super.key,
    required this.title,
    required this.author,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      height: 125,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAlias, // asegura que los bordes redondeados se apliquen
        child: Row(
          children: [
            Image.network(
              imageUrl,
              height: 125,
              width: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 125,
                width: 100,
                color: Colors.grey.shade300,
                child: const Icon(Icons.broken_image, color: Colors.grey),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(height: 1, width: 95, color: Colors.orange),
                    const SizedBox(height: 6),
                    Text(
                      author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
