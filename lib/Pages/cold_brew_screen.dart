import 'package:flutter/material.dart';

class ColdBrewScreen extends StatelessWidget {
  const ColdBrewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3E2723),
        title: const Text(
          'Cold Brew',
          style: TextStyle(
            color: Color(0xFFFFE0B2), // Light brown for better visibility
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFFFE0B2), // Back button color
        ),
      ),
      backgroundColor: const Color(0xFFD1B29D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Cold Brew Method',
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
              'assets/images/cold_brew.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Cold brew is made by steeping coffee grounds in cold water for 12–24 hours, resulting in a smoother, less acidic coffee.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xFF3E2723)),
            ),
          ),
        ],
      ),
    );
  }
}
