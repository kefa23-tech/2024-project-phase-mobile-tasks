import 'dart:io';

String input(String message) {
  stdout.write(message);
  return stdin.readLineSync() ?? "";
}

class Product {
  String _name;
  String _description;
  double _price;
  bool _completed;

  // Constructor
  Product(
    this._name,
    this._description,
    this._price, {
    bool completed = false,
  }) : _completed = completed;

  // GEtters
  String get name => _name;
  String get description => _description;
  double get price => _price;
  bool get completed => _completed;

  // Setters
  set name(String value) {
    _name = value;
  }

  set description(String value) {
    _description = value;
  }

  set price(double value) {
    _price = value;
  }

  set completed(bool value) {
    _completed = value;
  }
}

class ECommerce {
  final List<Product> _products = [];

  void add(Product product) {
    _products.add(product);
    print("Product added successfully!");
  }

  void viewAll() {
    if (_products.isEmpty) {
      print("No products available.");
      return;
    }

    for (Product p in _products) {
      print("${p.name} | ${p.description} | ${p.price}");
    }
  }

  void viewCompleted() {
    if (_products.isEmpty) {
      print("No products available.");
      return;
    }

    bool found = false;

    for (Product p in _products) {
      if (p.completed) {
        found = true;
        print("${p.name} | ${p.description} | ${p.price}");
      }
    }

    if (!found) {
      print("No completed products.");
    }
  }

  void viewPending() {
    if (_products.isEmpty) {
      print("No products available.");
      return;
    }

    bool found = false;

    for (Product p in _products) {
      if (!p.completed) {
        found = true;
        print("${p.name} | ${p.description} | ${p.price}");
      }
    }

    if (!found) {
      print("No pending products.");
    }
  }

  void editProduct(String oldName) {
    if (_products.isEmpty) {
      print("No products available.");
      return;
    }

    for (Product p in _products) {
      if (p.name == oldName) {
        p.name = input("New Name: ");
        p.description = input("New Description: ");

        try {
          p.price = double.parse(input("New Price: "));
        } catch (e) {
          print("Invalid price.");
          return;
        }

        print("Product updated successfully!");
        return;
      }
    }

    print("Product not found.");
  }

  void deleteProduct(String name) {
    if (_products.isEmpty) {
      print("No products available.");
      return;
    }

    int oldLength = _products.length;

    _products.removeWhere((product) => product.name == name);

    if (oldLength == _products.length) {
      print("Product not found.");
    } else {
      print("Product deleted successfully!");
    }
  }
}

void main() {
  ECommerce shop = ECommerce();


}