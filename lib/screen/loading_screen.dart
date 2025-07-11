import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      backgroundColor: const Color(0xFF3E2723),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(
              color: Color(0xFFFFE0B2),
            ),
            SizedBox(height: 20),
            Text(
              'Brewing your experience...',
              style: TextStyle(
                color: Color(0xFFFFE0B2),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
