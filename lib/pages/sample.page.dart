// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries

// SamplePage: StatelessWidget Class
class SamplePage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Sample Page";
  static String routeName = "/sample";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: title.length > 15 ? 13.0 : 15.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "This is $title.",
          ),
        ),
      ),
    );
  }
}
