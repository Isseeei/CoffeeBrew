import 'package:flutter/material.dart';

class FrenchPressDemo extends StatefulWidget {
  @override
  _FrenchPressDemoState createState() => _FrenchPressDemoState();
}

class _FrenchPressDemoState extends State<FrenchPressDemo> {
  double waterLevel = 0.0;
  double coffeeGrounds = 0.0;

  // Simulating the process of brewing in the French Press
  void pourWater() {
    setState(() {
      if (waterLevel < 1.0) {
        waterLevel += 0.1;  // Pour 10% of the water
      }
    });
  }

  void addCoffeeGrounds() {
    setState(() {
      if (coffeeGrounds < 1.0) {
        coffeeGrounds += 0.1; // Add 10% of the coffee grounds
      }
    });
  }

  void pressPlunger() {
    setState(() {
      if (waterLevel > 0.0 && coffeeGrounds > 0.0) {
        waterLevel = 0.0; // Brewed coffee (water level reduces after pressing)
        coffeeGrounds = 0.0; // Grounds settle after pressing
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // French Press illustration (you can use icons for illustration)
        Icon(Icons.coffee, size: 100, color: Color(0xFF3E2723)),
        const SizedBox(height: 20),
        Text(
          'French Press Brewing Process',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF3E2723)),
        ),
        const SizedBox(height: 20),
        // Simulate the brewing process with icons and sliders
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Coffee Grounds
              Row(
                children: [
                  Icon(Icons.filter_drama, color: Color(0xFF3E2723)),
                  Expanded(
                    child: Slider(
                      value: coffeeGrounds,
                      min: 0,
                      max: 1,
                      onChanged: (value) {
                        setState(() {
                          coffeeGrounds = value;
                        });
                      },
                    ),
                  ),
                  Text('${(coffeeGrounds * 100).toInt()}% Coffee Grounds'),
                ],
              ),
              const SizedBox(height: 20),
              // Water Level
              Row(
                children: [
                  Icon(Icons.local_drink, color: Color(0xFF3E2723)),
                  Expanded(
                    child: Slider(
                      value: waterLevel,
                      min: 0,
                      max: 1,
                      onChanged: (value) {
                        setState(() {
                          waterLevel = value;
                        });
                      },
                    ),
                  ),
                  Text('${(waterLevel * 100).toInt()}% Water'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Buttons for interaction
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: addCoffeeGrounds,
              child: Text('Add Coffee Grounds'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: pourWater,
              child: Text('Pour Water'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: pressPlunger,
              child: Text('Press Plunger'),
            ),
          ],
        ),
      ],
    );
  }
}
