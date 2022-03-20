// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// LineChartPage: StatelessWidget Class
class LineChartPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Line Chart Page";

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
