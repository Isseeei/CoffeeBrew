import 'package:flutter/material.dart';

class FrenchPressScreen extends StatelessWidget {
  const FrenchPressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1B29D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3E2723),
        title: const Text(
          'French Press',
          style: TextStyle(
            color: Color(0xFFFFE0B2),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFFFE0B2),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'French Press Method',
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
                'assets/images/french_press.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'French press brewing involves steeping coarse coffee grounds in hot water for 4–5 minutes and pressing with a plunger.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF3E2723)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
