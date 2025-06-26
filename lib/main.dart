import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: UserProfilePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class UserProfilePage extends StatelessWidget {
  final Color background = Color(0xFFD1B29D); // Light coffee
  final Color containerColor = Color(0xFF6F4F37); // Medium coffee
  final Color textColor = Color(0xFFD1B29D); // Creamy beige

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Color(0xFF3E2723), // Dark coffee
        title: Text(
          'Coffee Brew Buddy',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            color: Color(0xFFFFE0B2),
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
          mainAxisSize: MainAxisSize.min, // Centralize vertically
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // USER PROFILE
            Text(
              'USER PROFILE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3E2723),
              ),
            ),
            SizedBox(height: 20),

            // Profile Icon
            Icon(
              Icons.account_circle,
              size: 80,
              color: Color(0xFF3E2723),
            ),
            SizedBox(height: 30),

            // Info fields
            infoBox('Name', 'Christopher O. Macatangay'),
            SizedBox(height: 15),
            infoBox('Email', 'macatangayc123@gmail.com'),
            SizedBox(height: 15),
            infoBox('Company', 'Coffeesticated'),
            SizedBox(height: 15),
            infoBox('Contact', '09352424525'),
            SizedBox(height: 30),

            // Log Out Button
            ElevatedButton.icon(
              onPressed: () {
                // Log out action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3E2723),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              icon: Icon(Icons.logout, color: Color(0xFFFFE0B2)),
              label: Text(
                'LOG OUT',
                style: TextStyle(
                  color: Color(0xFFFFE0B2),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoBox(String label, String value) {
    return Container(
      width: 320,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
