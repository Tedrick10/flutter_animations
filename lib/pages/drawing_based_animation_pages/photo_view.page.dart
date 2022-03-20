// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:photo_view/photo_view.dart';

// PhotoViewPage: StatelessWidget Class
class PhotoViewPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Photo View Page";
  static String routeName = "/photo-view";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: PhotoView(
          imageProvider: AssetImage("assets/images/barcelona_city.jpg"),
        ),
      ),
    );
  }
}
