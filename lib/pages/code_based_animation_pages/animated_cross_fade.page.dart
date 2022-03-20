// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries

// AnimatedCrossFadePage: StatefulWidget Class
class AnimatedCrossFadePage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Animated Cross Fade Page";
  static String routeName = "/animated-cross-fade";

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

// _AnimatedCrossFadePageState: State Class
class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  // Normal: Class Properties
  bool _first = false;

  // Normal: Class Methods
  void stateChangeHandler() {
    setState(() {
      this._first = !this._first;
    });
  }

  // Build: Override Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedCrossFadePage.title),
      ),
      body: GestureDetector(
        onTap: this.stateChangeHandler,
        child: Center(
          child: AnimatedCrossFade(
            firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 100.00,
            ),
            secondChild: const FlutterLogo(
              style: FlutterLogoStyle.stacked,
              size: 100.00,
            ),
            crossFadeState: this._first
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
