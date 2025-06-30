import 'package:flutter/material.dart';
import 'coffee_method.dart'; // Import the CoffeeMethod model
import 'brew_detail_screen.dart'; // Import the BrewDetailScreen for navigation

class CoffeeCard extends StatelessWidget {
  final CoffeeMethod coffeeMethod;

  CoffeeCard({required this.coffeeMethod});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // When tapped, navigate to BrewDetailScreen for the selected method
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BrewDetailScreen(methodName: coffeeMethod.name),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF6F4F37), // Custom card color
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(coffeeMethod.icon, size: 48, color: Color(0xFFD1B29D)), // Icon color
            SizedBox(height: 10),
            Text(
              coffeeMethod.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD1B29D), // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
