import 'package:flutter/material.dart';

class PourOverScreen extends StatelessWidget {
  const PourOverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3E2723),
        title: const Text(
          'Pour Over',
          style: TextStyle(
            color: Color(0xFFFFE0B2),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFFFE0B2),
        ),
      ),
      backgroundColor: const Color(0xFFD1B29D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pour Over Method',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF3E2723),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 180,
            height: 180,
            child: Image.asset(
              'assets/images/pour_over.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Pour over involves manually pouring hot water over coffee grounds using a filter. It gives control over brewing time and temperature for a clean, complex cup.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xFF3E2723)),
            ),
          ),
        ],
      ),
    );
  }
}
