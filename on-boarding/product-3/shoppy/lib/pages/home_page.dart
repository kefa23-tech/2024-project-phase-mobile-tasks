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
          "https://imgs.search.brave.com/DAx-PmjsrlAwPxcXgXoN-zqRRjEY4tY3Bu1SRazqom0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly94Y2Ru/Lm5leHQuY28udWsv/Q29tbW9uL0l0ZW1z/L0RlZmF1bHQvRGVm/YXVsdC9JdGVtSW1h/Z2VzLzNfNFJhdGlv/L1NlYXJjaElOVC9M/Z2UvSDU3MzI1Lmpw/Zz9pbT1SZXNpemUs/d2lkdGg9NDUw",
      title: "Shirt",
      description: "Cotton shirt",
      price: 25.0,
      rating: 4.5,
      category: "Cloth",
    ),

    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/O8uQ4uYZNel09SRcYjfdveJRjhOL0h-6cIlnocIZ4EI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAyLzA5LzgyLzI2/LzM2MF9GXzIwOTgy/MjY0NF9idFFWM1A2/dFM3WGN5eVNSS2JF/WVlSemJKTVlNZldp/Ni5qcGc",
      title: "Shoes",
      description: "Running shoes",
      price: 50.0,
      rating: 4.8,
      category: "Shoes",
    ),

    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/CqLtHRNpbHS_O_ZxSzZJIY2Q-_qJ7XA-988k_t0Tex8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2F0Y2h0aW1lLmNv/bS93YXRjaHRpbWVf/ZW4tdXMvYmx0MjIy/NzZiZmYyODMxNzZi/ZC9ibHQ4ZGYwYzZi/MWNlZDIzNTVhLzZh/NGMzNDExY2VlMDMw/NDE3ZDc5MzFiZC9X/YXRjaFRpbWUtTWlk/by1NdWx0aWZvcnQt/VFYtQmlnLURhdGUt/TTA0OS41MjYuMzMu/MDQxLjAwLVRpdGVs/XzY0OXgzNjUud2Vi/cA",
      title: "Watch",
      description: "Classic watch",
      price: 80.0,
      rating: 4.6,
      category: "Accessories",
    ),

    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/msSk0TPlGpxB0fZaNmcVLUP7i0IuK5sa_z2qtu-gfU0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjYv/MzQyLzc2MC9zbWFs/bC9hLWZ1bGwtZnJh/bWUtZnJpZW5kbHkt/bGlnaHQtYnJvd24t/dG90ZS1iYWctd291/bGQtdHlwaWNhbGx5/LWJlLWEtc3BhY2lv/dXMtYmFnLXdpdGgt/YS1yZWN0YW5ndWxh/ci1zaGFwZS1hbmQt/c3R1cmR5LWhhbmRs/ZXMtZ2VuZXJhdGl2/ZS1haS1waG90by5q/cGc",
      title: "Bag",
      description: "Leather bag",
      price: 45.0,
      rating: 4.4,
      category: "Accessories",
    ),
    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/DAx-PmjsrlAwPxcXgXoN-zqRRjEY4tY3Bu1SRazqom0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly94Y2Ru/Lm5leHQuY28udWsv/Q29tbW9uL0l0ZW1z/L0RlZmF1bHQvRGVm/YXVsdC9JdGVtSW1h/Z2VzLzNfNFJhdGlv/L1NlYXJjaElOVC9M/Z2UvSDU3MzI1Lmpw/Zz9pbT1SZXNpemUs/d2lkdGg9NDUw",
      title: "Shirt",
      description: "Cotton shirt",
      price: 25.0,
      rating: 4.5,
      category: "Cloth",
    ),

    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/O8uQ4uYZNel09SRcYjfdveJRjhOL0h-6cIlnocIZ4EI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAyLzA5LzgyLzI2/LzM2MF9GXzIwOTgy/MjY0NF9idFFWM1A2/dFM3WGN5eVNSS2JF/WVlSemJKTVlNZldp/Ni5qcGc",
      title: "Shoes",
      description: "Running shoes",
      price: 50.0,
      rating: 4.8,
      category: "Shoes",
    ),

    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/CqLtHRNpbHS_O_ZxSzZJIY2Q-_qJ7XA-988k_t0Tex8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2F0Y2h0aW1lLmNv/bS93YXRjaHRpbWVf/ZW4tdXMvYmx0MjIy/NzZiZmYyODMxNzZi/ZC9ibHQ4ZGYwYzZi/MWNlZDIzNTVhLzZh/NGMzNDExY2VlMDMw/NDE3ZDc5MzFiZC9X/YXRjaFRpbWUtTWlk/by1NdWx0aWZvcnQt/VFYtQmlnLURhdGUt/TTA0OS41MjYuMzMu/MDQxLjAwLVRpdGVs/XzY0OXgzNjUud2Vi/cA",
      title: "Watch",
      description: "Classic watch",
      price: 80.0,
      rating: 4.6,
      category: "Accessories",
    ),

    ItemCard(
      imageUrl:
          "https://imgs.search.brave.com/msSk0TPlGpxB0fZaNmcVLUP7i0IuK5sa_z2qtu-gfU0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjYv/MzQyLzc2MC9zbWFs/bC9hLWZ1bGwtZnJh/bWUtZnJpZW5kbHkt/bGlnaHQtYnJvd24t/dG90ZS1iYWctd291/bGQtdHlwaWNhbGx5/LWJlLWEtc3BhY2lv/dXMtYmFnLXdpdGgt/YS1yZWN0YW5ndWxh/ci1zaGFwZS1hbmQt/c3R1cmR5LWhhbmRs/ZXMtZ2VuZXJhdGl2/ZS1haS1waG90by5q/cGc",
      title: "Bag",
      description: "Leather bag",
      price: 45.0,
      rating: 4.4,
      category: "Accessories",
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
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
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
