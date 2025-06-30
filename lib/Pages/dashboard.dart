import 'package:flutter/material.dart';
import 'coffee_list.dart'; // Import CoffeeList widget

class DashboardScreen extends StatelessWidget {
  final Color background = Color(0xFFD1B29D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Color(0xFF3E2723),
        title: Text(
          'Coffee Brew Buddy',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFE0B2),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Select Brewing Method',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3E2723),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: CoffeeList(),
          ),
        ],
      ),
    );
  }
}
