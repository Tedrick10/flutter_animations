// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ButtonWidget: StatelessWidget Class
class ButtonWidget extends StatelessWidget {
  // Final: Class Properties
  final String title;
  final String routeName;

  // ButtonWidget: Constructor
  ButtonWidget({
    required this.title,
    required this.routeName,
  });

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    double _fontSize = this.title.length > 35 ? 13.0 : 15.0;
    // Returning Widgets
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 300,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(this.routeName);
          },
          child: Text(
            this.title,
            style: TextStyle(
              fontSize: _fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
