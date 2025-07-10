import 'package:flutter/material.dart';
import 'Pages/coffee_list.dart';       // Brew Methods screen
import 'Pages/profile_screen.dart';    // Profile screen
import 'Pages/forms.dart';             // CoffeeRatioForm screen
// import 'World_Time/choose_location.dart';
// import 'World_Time/home.dart';
// import 'World_Time/loading.dart';
// import 'World_Time/world_time_Service.dart';


void main() => runApp(CoffeeApp());

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    CoffeeList(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF3E2723),
        selectedItemColor: Color(0xFFFFE0B2),
        unselectedItemColor: Colors.white60,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_cafe),
            label: 'Brew Methods',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),

      // Show FAB only on Brew Methods tab (index 0)
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
        backgroundColor: Color(0xFF3E2723),
        child: Icon(Icons.add, color: Color(0xFFFFE0B2)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CoffeeRatioForm()),
          );
        },
      )
          : null,
    );
  }
}
