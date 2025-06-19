import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD1B29D), // Dark brown, like coffee
        appBar: AppBar(
          backgroundColor: Color(0xFF3E2723), // Darker coffee color for AppBar
          title: Text(
            'Coffee Brew Buddy',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Color(0xFFFFE0B2), // Light caramel color for the title
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.6),
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Name Row with background color
              SizedBox(
                width: 350,
                child: Container(
                  color: Color(0xFF6F4F37), // Background color for the Name row
                  padding: EdgeInsets.all(8), // Padding for a little space around the text
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFD1B29D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Christopher Macatangay',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFD1B29D), // White text for the name
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Age Row
              SizedBox(
                width: 150,
                child: Container(
                  color: Color(0xFF6F4F37), // Background color for the Name row
                  padding: EdgeInsets.all(8), // Padding for a little space around the text
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Age:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFD1B29D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '21',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFD1B29D), // White text for the name
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Gender Row
          SizedBox(
            width: 215,
            child: Container(
              color: Color(0xFF6F4F37), // Background color for the Name row
              padding: EdgeInsets.all(8), // Padding for a little space around the text
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gender:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFD1B29D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFD1B29D), // White text for the name
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    ),
  );
}

