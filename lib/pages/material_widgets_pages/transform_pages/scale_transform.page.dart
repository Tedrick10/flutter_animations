// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries

// ScaleTransformPage: StatelessWidget Class
class ScaleTransformPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Scale Transform Page";
  static String routeName = "/scale-transform";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: title.length > 20 ? 13.0 : 15.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black38,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              alignment: Alignment.topLeft,
              child: Transform.scale(
                alignment: Alignment.bottomCenter,
                scale: 0.7,
                child: Container(
                  color: Colors.teal[50],
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1631729374931-c2aa700f4be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                      fit: BoxFit.cover, loadingBuilder: (BuildContext context,
                          Widget child, ImageChunkEvent? loading) {
                    if (loading == null) return child;

                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "It is a 'Transform.Scale'. The scale constructor scales the child by the given scale boundary. The scale argument should not be null. It gives the scalar by which to increases the x and y axes. The alignment controls the beginning of the scale; by default, this is the container's bottom-center.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
