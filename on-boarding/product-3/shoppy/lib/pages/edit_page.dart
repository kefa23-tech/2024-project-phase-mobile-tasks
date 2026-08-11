import 'package:flutter/material.dart';
import 'package:shoppy/components/category.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String selectedCategory = 'Cloth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Product"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Product image",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(244, 230, 225, 225),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image_outlined,
                    color: Colors.grey,
                    size: 60,
                  ),
                  SizedBox(height: 8),
                  Text("tap to upload"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(
                    title: "Cloth",
                    isSelected: selectedCategory == 'Cloth',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Cloth';
                      });
                    },
                  ),
                  CategoryButton(
                    title: "Accessories",
                    isSelected: selectedCategory == 'Accessories',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Accessories';
                      });
                    },
                  ),
                  CategoryButton(
                    title: "Shoes",
                    isSelected: selectedCategory == 'Shoes',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Shoes';
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Product title",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter product name",
                filled: true,
                fillColor: const Color.fromARGB(244, 230, 225, 225),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Product description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Enter product description",
                filled: true,
                fillColor: const Color.fromARGB(244, 230, 225, 225),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Price",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter product price",
                filled: true,
                fillColor: const Color.fromARGB(244, 230, 225, 225),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.attach_money),
                suffixIcon: const Icon(Icons.info),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.grey[700],
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Add Product",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class CategoryButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const CategoryButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? Colors.blue
              : const Color.fromARGB(244, 230, 225, 225),
          foregroundColor: isSelected ? Colors.white : Colors.black,
          elevation: isSelected ? 2 : 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
