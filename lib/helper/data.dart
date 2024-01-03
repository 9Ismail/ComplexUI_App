import 'package:flutter/material.dart';

Color primarycolor = Color(0xFF00bfff);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
      color: Colors.blue[900]!.withOpacity(0.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20)
];

List expenses = [
  {"name": "Shoes", "amount": 500.0},
  {"name": "Shirts", "amount": 200.0},
  {"name": "T-shirts", "amount": 100.0},
  {"name": "Jackets", "amount": 50.0},
  {"name": "Gloves", "amount": 100.0},
  {"name": "Caps", "amount": 30.0},
];

List pieColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];
