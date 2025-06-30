import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Color background = Color(0xFFD1B29D);
  final Color containerColor = Color(0xFF6F4F37);
  final Color textColor = Color(0xFFD1B29D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Color(0xFF3E2723),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFE0B2),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'USER PROFILE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3E2723),
              ),
            ),
            SizedBox(height: 20),
            Icon(Icons.account_circle, size: 80, color: Color(0xFF3E2723)),
            SizedBox(height: 30),
            infoBox('Name', 'Christopher O. Macatangay'),
            SizedBox(height: 15),
            infoBox('Email', 'macatangayc123@gmail.com'),
            SizedBox(height: 15),
            infoBox('Company', 'Coffeesticated'),
            SizedBox(height: 15),
            infoBox('Contact', '09352424525'),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {},
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
