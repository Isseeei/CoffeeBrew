import 'package:flutter/material.dart';

class PourOverDemo extends StatefulWidget {
  @override
  _PourOverDemoState createState() => _PourOverDemoState();
}

class _PourOverDemoState extends State<PourOverDemo> with TickerProviderStateMixin {
  late AnimationController _waterDropController;
  late Animation<double> _waterDropAnimation;

  late AnimationController _steamController;
  late Animation<double> _steamAnimation;

  bool _showCup = false;
  bool _showFilter = false;
  bool _showWaterDrop = false;
  bool _showSteam = false;
  bool _coffeeReady = false;

  @override
  void initState() {
    super.initState();

    // Water drop falling animation
    _waterDropController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _waterDropAnimation = Tween<double>(begin: -50, end: 80).animate(
      CurvedAnimation(parent: _waterDropController, curve: Curves.easeIn),
    );

    // Steam rising animation
    _steamController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _steamAnimation = Tween<double>(begin: 0, end: -30).animate(
      CurvedAnimation(parent: _steamController, curve: Curves.easeInOut),
    );

    // Start the animation sequence
    _startAnimationSequence();
  }

  Future<void> _startAnimationSequence() async {
    setState(() {
      _showCup = true;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showFilter = true;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showWaterDrop = true;
    });

    await _waterDropController.forward();
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      _showWaterDrop = false;
      _showSteam = true;
    });
    _steamController.repeat(reverse: true);

    await Future.delayed(Duration(seconds: 5));
    _steamController.stop();
    setState(() {
      _showSteam = false;
      _coffeeReady = true;
    });
  }

  @override
  void dispose() {
    _waterDropController.dispose();
    _steamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Pour Over Demo',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF3E2723)),
          ),
          SizedBox(height: 30),

          // Cup
          if (_showCup)
            Icon(Icons.local_cafe, size: 80, color: Colors.brown[700]),

          SizedBox(height: 10),

          // Filter (appears above cup)
          if (_showFilter)
            Icon(Icons.filter_alt, size: 50, color: Colors.brown[300]),

          SizedBox(height: 20),

          // Water drop falling animation
          if (_showWaterDrop)
            AnimatedBuilder(
              animation: _waterDropController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _waterDropAnimation.value),
                  child: Icon(Icons.opacity, size: 40, color: Colors.blueAccent),
                );
              },
            ),

          // Steam rising animation
          if (_showSteam)
            AnimatedBuilder(
              animation: _steamController,
              builder: (context, child) {
                return Opacity(
                  opacity: 0.7,
                  child: Transform.translate(
                    offset: Offset(0, _steamAnimation.value),
                    child: Icon(Icons.cloud, size: 50, color: Colors.grey[400]),
                  ),
                );
              },
            ),

          SizedBox(height: 20),

          // Coffee ready message
          if (_coffeeReady)
            Text(
              "Coffee is ready! ☕️",
              style: TextStyle(fontSize: 20, color: Colors.brown[800], fontWeight: FontWeight.w600),
            ),
        ],
      ),
    );
  }
}
