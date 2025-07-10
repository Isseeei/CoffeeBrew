import 'package:flutter/material.dart';

class AeroPressScreen extends StatelessWidget {
  const AeroPressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1B29D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3E2723),
        title: const Text(
          'AeroPress',
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
              'AeroPress Method',
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
                'assets/images/aeropress.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'AeroPress uses air pressure to push hot water through coffee grounds quickly, producing a smooth cup.',
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
