import 'package:flutter/material.dart';

class CoffeeRatioForm extends StatefulWidget {
  const CoffeeRatioForm({super.key});

  @override
  State<CoffeeRatioForm> createState() => _CoffeeRatioFormState();
}

class _CoffeeRatioFormState extends State<CoffeeRatioForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _gramsController = TextEditingController();

  String? _selectedMethod;
  double? _waterAmount;

  final Map<String, double> _brewRatios = {
    'Pour Over': 16.0,
    'French Press': 15.0,
    'Espresso': 2.0,
    'Cold Brew': 8.0,
    'AeroPress': 12.0,
  };

  final Map<String, String> _instructions = {
    'Pour Over': 'Pour in slow circles, total brew ~3-4 mins.',
    'French Press': 'Steep for 4 minutes, then plunge slowly.',
    'Espresso': 'Extraction time: 25–30 seconds.',
    'Cold Brew': 'Steep 12–18 hours in fridge, then strain.',
    'AeroPress': 'Stir and press after 1–2 mins. Flip method optional.',
  };

  void _calculateWater() {
    if (_formKey.currentState!.validate()) {
      double grams = double.parse(_gramsController.text);
      double ratio = _brewRatios[_selectedMethod!] ?? 15.0;

      setState(() {
        _waterAmount = grams * ratio;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Coffee Grounds'),
        backgroundColor: Color(0xFF3E2723),
        foregroundColor: Color(0xFFFFE0B2),
      ),
      backgroundColor: Color(0xFFD1B29D),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Brewing Method',
                  border: OutlineInputBorder(),
                ),
                value: _selectedMethod,
                items: _brewRatios.keys.map((method) {
                  return DropdownMenuItem(
                    value: method,
                    child: Text(method),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedMethod = value;
                    _waterAmount = null;
                  });
                },
                validator: (value) =>
                value == null ? 'Select a brewing method' : null,
              ),
              SizedBox(height: 15),

              // Show Brewing Instructions
              if (_selectedMethod != null)
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFF6F4F37),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _instructions[_selectedMethod!] ?? '',
                    style: TextStyle(color: Color(0xFFD1B29D)),
                  ),
                ),

              SizedBox(height: 20),

              TextFormField(
                controller: _gramsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Coffee Grounds (g)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter coffee amount';
                  }
                  final parsed = double.tryParse(value);
                  if (parsed == null || parsed <= 0) {
                    return 'Enter a valid number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: _calculateWater,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3E2723),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Calculate Water Needed',
                  style: TextStyle(color: Color(0xFFFFE0B2)),
                ),
              ),
              SizedBox(height: 30),

              if (_waterAmount != null)
                Text(
                  'Use ${_waterAmount!.toStringAsFixed(1)}g of water\nfor $_selectedMethod',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3E2723),
                  ),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
