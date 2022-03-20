// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ScatterChartPage: StatelessWidget Class
class ScatterChartPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Scatter Chart Page";

  // Build: Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("This is $title"),
      ),
    );
  }
}
