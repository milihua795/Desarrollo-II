import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          PlantsCard(
            title: "Menta",
            author: "Gabriela Zúñiga",
            imageUrl: "https://es.lorealparisusa.com/-/media/project/loreal/brand-sites/oap/americas/us/ingredients-library/loreal-paris-makeup-peppermint-oil-2000x900.jpg",
          ),
          PlantsCard(
            title: "Manzanilla",
            author: "Juan Pérez",
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLJoGZwf160VR5pDjdK39KVDP38lycHR4cbw&s",
          ),
          PlantsCard(
            title: "Aloe Vera",
            author: "Lucía Ramírez",
            imageUrl: "https://cdn11.bigcommerce.com/s-ww3msiylzo/product_images/uploaded_images/aloe-vera-blog.jpg",
          ),
        ],
      ),
    );
  }
}
