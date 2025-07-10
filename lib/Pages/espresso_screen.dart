import 'package:flutter/material.dart';

class EspressoScreen extends StatelessWidget {
  const EspressoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1B29D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3E2723),
        title: const Text(
          'Espresso',
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
              'Espresso Method',
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
                'assets/images/espresso.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Espresso is a strong coffee made by forcing hot water through finely ground coffee under high pressure.',
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
