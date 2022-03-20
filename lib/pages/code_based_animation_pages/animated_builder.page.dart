// Dart: Existing Libraries
import 'dart:math' as math;

// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries

// AnimatedBuilderPage: StatefulWidget Class
class AnimatedBuilderPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Animated Builder Page";
  static String routeName = "/animated-builder";

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
    with TickerProviderStateMixin {
  // Normal: Class Properties
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();

  // Lifecycle Hook Methods
  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedBuilderPage.title),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: this._controller,
          child: Container(
            width: 200.00,
            height: 200.00,
            color: Colors.green,
            child: const Center(
              child: Text("Whee!"),
            ),
          ),
          builder: (_, child) {
            return Transform.rotate(
              angle: this._controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
