import 'package:flutter/material.dart';
import '../Widgets/pour_over_demo.dart';

class PourOverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pour Over Method',
          style: TextStyle(color: Color(0xFFFFE0B2)),
        ),
        backgroundColor: Color(0xFF3E2723),
        elevation: 4.0,
      ),
      backgroundColor: Color(0xFFD1B29D), // Match French Press background
      body: Container(
        color: Color(0xFFD1B29D), // Double ensure background color
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Learn how to brew coffee with Pour Over method.',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF3E2723),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: PourOverDemo(),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Pour-over involves slowly pouring hot water over coffee grounds to extract flavors, producing a smooth and balanced coffee.',
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