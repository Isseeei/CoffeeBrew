import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ALCOHOLKINDS',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: 1.5,
            ),
          ),
          backgroundColor: Color(0xFF1DB954), // Spotify Green
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'HELLO SOB',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF1DB954), // Spotify Green
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
                'HELLO SOB',
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFF1DB954), // Spotify Green
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
                'HELLO SOB',
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xFF1DB954), // Spotify Green
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
        backgroundColor: Colors.black, // Dark background like Spotify
      ),
    ),
  );
}
