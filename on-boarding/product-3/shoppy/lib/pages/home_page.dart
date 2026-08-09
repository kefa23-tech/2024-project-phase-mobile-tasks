import 'package:flutter/material.dart';
import 'package:shoppy/components/category.dart';
import 'package:shoppy/components/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemCard> items = [
    ItemCard(
      imageUrl: "assets/images/shirt.jpg",
      title: "Shirt",
      description: "Cotton shirt",
      price: 25.0,
      rating: 4.5,
    ),

    ItemCard(
      imageUrl: "assets/images/shoes.jpg",
      title: "Shoes",
      description: "Running shoes",
      price: 50.0,
      rating: 4.8,
    ),

    ItemCard(
      imageUrl: "assets/images/watch.jpg",
      title: "Watch",
      description: "Classic watch",
      price: 80.0,
      rating: 4.6,
    ),

    ItemCard(
      imageUrl: "assets/images/bag.jpg",
      title: "Bag",
      description: "Leather bag",
      price: 45.0,
      rating: 4.4,
    ),
  ];

  List<CategoryButton> categories = [
    CategoryButton(
      title: "Cloth",
      onPressed: () {
        print("Cloth selected");
      },
    ),

    CategoryButton(
      title: "Accessories",
      onPressed: () {
        print("Accessories selected");
      },
    ),

    CategoryButton(
      title: "Shoes",
      onPressed: () {
        print("Shoes selected");
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHOPPY"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          // Horizontal categories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: categories),
          ),

          const SizedBox(height: 20),

          // Product grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),

              itemCount: items.length,

              itemBuilder: (context, index) {
                return items[index];
              },
            ),
          ),
        ],
      ),

      // Bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
