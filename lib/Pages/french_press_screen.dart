import 'package:flutter/material.dart';
import '../Widgets/french_press_demo.dart';

class FrenchPressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'French Press Method',
          style: TextStyle(color: Color(0xFFFFE0B2)),  // Light brown text color
        ),
        backgroundColor: Color(0xFF3E2723),  // Dark brown color for the AppBar
        elevation: 4.0,
      ),
      backgroundColor: Color(0xFFD1B29D), // Beige background (matches previous)
      body: Container(
        color: Color(0xFFD1B29D), // Ensures full coverage
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Text description of French Press Method
              const Text(
                'Learn how to brew coffee with French Press method.',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF3E2723),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Add the FrenchPressDemo widget here to show the animation
              Expanded(
                child: FrenchPressDemo(), // Animation widget
              ),
              const SizedBox(height: 20),
              // Text description below the animation
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'French press brewing involves steeping coffee grounds in hot water and then pressing them using a plunger.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Color(0xFF3E2723)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}