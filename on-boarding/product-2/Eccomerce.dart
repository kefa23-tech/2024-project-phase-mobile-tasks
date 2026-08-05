import 'dart:ffi';
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

  //constructor
  Product(this._name,this._description,this._price
          {bool completed = false})
          : _completed = completed;

  
  // GEtters

  String get name => _name;
  String get description => _description;
  double get price => _price;
  bool get completed => _completed;

  //Setters

  set name(String value){
    _name = value;
  }
  set description(String value){
    _description = value;
  }  
  set price(double value){
    _price = value;
  }  
  set completed(bool value){
    _completed = value;
  }
}
