// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ImageWidget: StatelessWidget Class
class ImageWidget extends StatelessWidget {
  // Final: Class Properties
  final String imageRoute;

  // ImageWidget: Constructor
  ImageWidget({required this.imageRoute});

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Image.asset(
      this.imageRoute,
    );
  }
}
