import 'package:flutter/material.dart';

class EspressoDemo extends StatefulWidget {
  @override
  _EspressoDemoState createState() => _EspressoDemoState();
}

class _EspressoDemoState extends State<EspressoDemo> {
  double waterLevel = 0.0;
  double coffeeGrounds = 0.0;
  bool espressoBrewed = false;

  // Simulate the process of brewing espresso
  void addCoffeeGrounds() {
    setState(() {
      if (coffeeGrounds < 1.0) {
        coffeeGrounds += 0.1;  // Add 10% of coffee grounds
      }
    });
  }

  void addWater() {
    setState(() {
      if (waterLevel < 1.0) {
        waterLevel += 0.1;  // Add 10% of water
      }
    });
  }

  void brewEspresso() {
    setState(() {
      if (waterLevel > 0.0 && coffeeGrounds > 0.0) {
        espressoBrewed = true;
        waterLevel = 0.0;  // Water gets used up after brewing
        coffeeGrounds = 0.0; // Grounds are consumed during brewing
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Espresso machine illustration (use an icon or image)
        Icon(Icons.local_cafe, size: 100, color: Color(0xFF3E2723)),
        const SizedBox(height: 20),
        Text(
          'Espresso Brewing Process',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF3E2723)),
        ),
        const SizedBox(height: 20),
        // Simulate the brewing process with sliders and progress indicators
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
              onPressed: addWater,
              child: Text('Add Water'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: brewEspresso,
              child: Text('Brew Espresso'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Show a visual indicator once espresso is brewed
        if (espressoBrewed)
          Icon(Icons.local_cafe, size: 100, color: Colors.brown),
        const SizedBox(height: 20),
        if (espressoBrewed)
          Text(
            'Espresso Brewed! Enjoy your coffee!',
            style: TextStyle(fontSize: 18, color: Colors.brown),
          ),
      ],
    );
  }
}
