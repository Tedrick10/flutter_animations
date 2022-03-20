// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// AnimatedAlignPage: StatefulWidget Class
class AnimatedAlignPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Animated Align Page";
  static String routeName = "/animated-align";

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  // Normal: Class Properties
  bool selected = false;

  // Normal: Class Methods
  void positionChangeHandler() {
    setState(() {
      this.selected = !this.selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedAlignPage.title),
      ),
      body: GestureDetector(
        onTap: this.positionChangeHandler,
        child: Center(
          child: Container(
              width: 250.00,
              height: 250.00,
              color: Colors.red,
              child: AnimatedAlign(
                alignment:
                    this.selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50.0),
              )),
        ),
      ),
    );
  }
}
