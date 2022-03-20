// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries

// AnimatedModelBarrierPage: StatelessWidget Class
class AnimatedModelBarrierPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Animated Model Barrier Page";
  static String routeName = "/animated-model-barrier";

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
      body: Center(
        child: Text(
          "This is $title.",
        ),
      ),
    );
  }
}
