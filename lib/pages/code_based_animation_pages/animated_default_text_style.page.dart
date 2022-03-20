// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries

// AnimatedDefaultTextStylePage: StatefulWidget Class
class AnimatedDefaultTextStylePage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Animated Default Text Style Page";
  static String routeName = "/animated-default-text-style";

  @override
  State<AnimatedDefaultTextStylePage> createState() =>
      _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  // Normal: Class Properties
  bool _isBold = false;

  // Normal: Class Methods
  void _boldChangeHandler() {
    setState(() {
      this._isBold = !this._isBold;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AnimatedDefaultTextStylePage.title,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: this._boldChangeHandler,
          child: Center(
            child: AnimatedDefaultTextStyle(
              child: const Text("Flutter"),
              style: TextStyle(
                color: this._isBold ? Colors.black : Colors.red,
                fontSize: this._isBold ? 100.00 : 30.00,
                fontWeight: this._isBold ? FontWeight.bold : FontWeight.normal,
              ),
              duration: const Duration(seconds: 2),
            ),
          ),
        ),
      ),
    );
  }
}
