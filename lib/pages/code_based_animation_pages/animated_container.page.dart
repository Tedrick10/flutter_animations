// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries

// AnimatedContainerPage: StatefulWidget Class
class AnimatedContainerPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Animated Container Page";
  static String routeName = "/animated-container";

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  // Normal: Class Properties
  bool _selected = false;

  // Normal: Class Methods
  void _selectedChangeHandler() {
    setState(() {
      this._selected = !this._selected;
    });
  }

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedContainerPage.title),
      ),
      body: GestureDetector(
        onTap: this._selectedChangeHandler,
        child: Center(
          child: AnimatedContainer(
            width: this._selected ? 200.00 : 100.00,
            height: this._selected ? 100.00 : 200.00,
            color: this._selected ? Colors.red : Colors.green,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(size: 50.00),
          ),
        ),
      ),
    );
  }
}
