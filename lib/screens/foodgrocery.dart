import 'package:flutter/material.dart';

class Foodgrocery extends StatefulWidget {
  const Foodgrocery({super.key});

  @override
  State<Foodgrocery> createState() => _FoodgroceryState();
}

class _FoodgroceryState extends State<Foodgrocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
