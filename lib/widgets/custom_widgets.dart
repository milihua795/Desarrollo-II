import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  imageUrl,
                  height: 125,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 26),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      color: Colors.brown,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    height: 1,
                    width: 95,
                    color: Colors.orange,
                  ),
                  Text(
                    author,
                    style: const TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
                  ),
                  const SizedBox(height: 4),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
