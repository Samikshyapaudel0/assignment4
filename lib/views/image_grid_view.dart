import 'package:flutter/material.dart';

class ImageGridViewScreen extends StatelessWidget {
  const ImageGridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Grid View"),
        backgroundColor: const Color.fromARGB(255, 177, 37, 114),
      ),

      body: Padding(
        
        padding: const EdgeInsets.all(10),

        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,

          children: [
            _buildCard(image: "assets/images/momo.png", name: "MOMO"),

            _buildCard(image: "assets/images/pizza.png", name: "PIZZA"),

            _buildCard(
              image: "assets/images/samosa.png",
              name: "SAMOSA",
            ),

            _buildCard(image: "assets/images/momo.png", name: "MOMO"),

            _buildCard(image: "assets/images/pizza.png", name: "PIZZA"),

            _buildCard(
              image: "assets/images/samosa.png",
              name: "SAMOSA",
            ),

            _buildCard(image: "assets/images/momo.png", name: "MOMO"),

            // Card 8
            _buildCard(image: "assets/images/pizza.png", name: "PIZZA"),

            // Card 9
            _buildCard(
              image: "assets/images/samosa.png",
              name: "SAMOSA",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required String image, required String name}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        children: [
          // Image
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),

              child: Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text
          Padding(
            padding: const EdgeInsets.all(8),

            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
