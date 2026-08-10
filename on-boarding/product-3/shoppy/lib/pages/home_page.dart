import 'package:flutter/material.dart';
import 'package:shoppy/components/category.dart';
import 'package:shoppy/components/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> items = [
    ItemCard(
      imageUrl:
          "",
      title: "Shirt",
      description: "Cotton shirt",
      price: 25.0,
      rating: 4.5,
    ),

    ItemCard(
      imageUrl:
          "",
      title: "Shoes",
      description: "Running shoes",
      price: 50.0,
      rating: 4.8,
    ),

    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/CqLtHRNpbHS_O_ZxSzZJIY2Q-_qJ7XA-988k_t0Tex8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2F0Y2h0aW1lLmNv/bS93YXRjaHRpbWVf/ZW4tdXMvYmx0MjIy/NzZiZmYyODMxNzZi/ZC9ibHQ4ZGYwYzZi/MWNlZDIzNTVhLzZh/NGMzNDExY2VlMDMw/NDE3ZDc5MzFiZC9X/YXRjaFRpbWUtTWlk/by1NdWx0aWZvcnQt/VFYtQmlnLURhdGUt/TTA0OS41MjYuMzMu/MDQxLjAwLVRpdGVs/XzY0OXgzNjUud2Vi/cA",
      title: "Watch",
      description: "Classic watch",
      price: 80.0,
      rating: 4.6,
    ),

    ItemCard(
      imageUrl:"",
          title: "Bag",
      description: "Leather bag",
      price: 45.0,
      rating: 4.4,
    ),
  ];

  final List<Widget> categories = [
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
          const SizedBox(height: 20),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: categories),
          ),

          const SizedBox(height: 20),

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
    );
  }
}
