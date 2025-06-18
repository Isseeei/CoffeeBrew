import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Coffee Brew Buddy',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF3E2723), // Espresso Brown
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'POUR OVER',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF6F4F37), // Coffee Bean Brown
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.5,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              Text(
                'FRENCH PRESS',
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFF6F4F37), // Coffee Bean Brown
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.5,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              Text(
                'ESPRESSO',
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xFF6F4F37), // Coffee Bean Brown
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.5,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFD1B29D), // Cappuccino Cream
      ),
    ),
  );
}
