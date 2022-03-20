// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// BarChartPage: StatelessWidget Class
class BarChartPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Bar Chart Page";

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
