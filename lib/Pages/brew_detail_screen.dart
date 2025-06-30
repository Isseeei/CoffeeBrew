import 'package:flutter/material.dart';

class BrewDetailScreen extends StatelessWidget {
  final String methodName;

  BrewDetailScreen({required this.methodName});

  final Color background = Color(0xFFD1B29D);
  final Color titleColor = Color(0xFF3E2723);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Color(0xFF3E2723),
        title: Text(
          methodName,
          style: TextStyle(
            color: Color(0xFFFFE0B2),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            'Instructions for making coffee using $methodName will go here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: titleColor,
              fontSize: 18,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
