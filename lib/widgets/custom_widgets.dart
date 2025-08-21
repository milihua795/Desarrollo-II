import 'package:flutter/material.dart';

/// 🌱 Tarjeta de plantas
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// 👥 Tarjeta de personas
class PersonCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  const PersonCard({
    super.key,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 28,
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }
}

/// ℹ️ Tarjeta de información
class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: Colors.green),
        title: Text(label),
        subtitle: Text(value),
      ),
    );
  }
}
