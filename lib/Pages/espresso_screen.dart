import 'package:flutter/material.dart';
import 'package:coffeebrewbuddy/Widgets/espresso_demo.dart';

class EspressoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Espresso Method',
          style: TextStyle(color: Color(0xFFFFE0B2)),  // Light brown text color
        ),
        backgroundColor: Color(0xFF3E2723),  // Dark brown color for the AppBar
        elevation: 4.0,
      ),
      backgroundColor: Color(0xFFD1B29D), // Consistent beige background
      body: Container(
        color: Color(0xFFD1B29D), // Double protection for full coverage
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Text description
              const Text(
                'Learn how to brew coffee with the Espresso method.',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF3E2723),  // Dark brown text
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Animation widget
              Expanded(
                child: Builder(
                  builder: (context) => EspressoDemo(),
                ),
              ),
              const SizedBox(height: 20),
              // Description text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Espresso brewing involves forcing hot water through finely-ground coffee under high pressure.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF3E2723)  // Dark brown text
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}