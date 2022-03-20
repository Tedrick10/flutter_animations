// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// RaderChartPage: StatelessWidget Class
class RaderChartPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Rader Chart Page";

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
