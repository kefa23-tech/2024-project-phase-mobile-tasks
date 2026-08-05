import 'dart:io';

String input(String message) {
  stdout.write(message);
  return stdin.readLineSync()!;
}

void main() {}

class Product {
  String name;
  String description;
  double price;

  Product(this.name, this.description, this.price);
}

class ProductManager {
  Product add_new_product() {
    Product p = Product(
      input("Name: "),
      input("Description: "),
      double.parse(input("Price: ")),
    );

    return p;
  }

  void view_all_products(List<Product> products) {
    for (Product p in products) {
      print("${p.name} | ${p.description} | ${p.price}");
    }
  }

  void edit_a_product(List<Product> products, Product p) {
    for (Product item in products) {
      if (item.name == p.name) {
        item.name = input("Name: ");
        item.description = input("Description: ");
        item.price = double.parse(input("Price: "));

        print("Product updated successfully!");
        return;
      }
    }

    print("Product not found");
  }

  void delete_a_product(List<Product> products, Product p) {
    products.removeWhere((item) => item.name == p.name);

    print("Product deleted successfully!!");
  }
}
