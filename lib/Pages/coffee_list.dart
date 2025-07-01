import 'package:flutter/material.dart';
import 'coffee_card.dart'; // Import CoffeeCard widget
import 'coffee_method.dart'; // Import CoffeeMethod model
import 'forms.dart'; // Import the new form screen

class CoffeeList extends StatelessWidget {
  final Color background = Color(0xFFD1B29D);

  final List<CoffeeMethod> coffeeMethods = [
    CoffeeMethod(name: 'Pour Over', icon: Icons.waterfall_chart),
    CoffeeMethod(name: 'French Press', icon: Icons.local_drink),
    CoffeeMethod(name: 'Espresso', icon: Icons.coffee),
    CoffeeMethod(name: 'Cold Brew', icon: Icons.ac_unit),
    CoffeeMethod(name: 'AeroPress', icon: Icons.filter_alt),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Color(0xFF3E2723),
        title: Text(
          'Coffee Brew Buddy',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFE0B2),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Select Brewing Method',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3E2723),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: coffeeMethods.map((method) {
                return CoffeeCard(coffeeMethod: method); // Use CoffeeCard here
              }).toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF3E2723),
        child: Icon(Icons.add, color: Color(0xFFFFE0B2)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CoffeeRatioForm()),
          );
        },
      ),
    );
  }
}
