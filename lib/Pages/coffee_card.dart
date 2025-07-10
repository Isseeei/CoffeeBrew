import 'package:flutter/material.dart';
import 'coffee_method.dart';
import 'cold_brew_screen.dart';
import 'pour_over_screen.dart';
import 'french_press_screen.dart';
import 'espresso_screen.dart';
import 'aeropress_screen.dart';

class CoffeeCard extends StatelessWidget {
  final CoffeeMethod coffeeMethod;

  const CoffeeCard({Key? key, required this.coffeeMethod}) : super(key: key);

  void _navigateToMethodScreen(BuildContext context) {
    Widget screen;

    switch (coffeeMethod.name) {
      case 'Cold Brew':
        screen = const ColdBrewScreen();
        break;
      case 'Pour Over':
        screen = const PourOverScreen();
        break;
      case 'French Press':
        screen = const FrenchPressScreen();
        break;
      case 'Espresso':
        screen = const EspressoScreen();
        break;
      case 'AeroPress':
        screen = const AeroPressScreen();
        break;
      default:
        screen = Scaffold(
          appBar: AppBar(title: const Text('Coming Soon')),
          body: const Center(child: Text('Screen not implemented yet')),
        );
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToMethodScreen(context),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: const Color(0xFF3E2723),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                coffeeMethod.icon,
                size: 60,
                color: const Color(0xFFFFE0B2),
              ),
              const SizedBox(height: 8),
              Text(
                coffeeMethod.name,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFFE0B2),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
