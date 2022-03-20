// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Animation: Widgets
//// DrawingBasedAnimations
import '../../animations/drawing_based_animation/curved_navigation_bar.animation.dart';

// CurvedNavigationBarExamplePage: StatelessWidget Class
class CurvedNavigationBarExamplePage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Curved Navigation Bar Example";
  static String routeName = "/curved_navigation_bar";

  // Build: Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBarAnimation(),
      appBar: AppBar(
        title: Text(
          "Curved Navigation Bar Page",
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Hello, This is Curved Navigation Bar Page!",
        ),
      ),
    );
  }
}
