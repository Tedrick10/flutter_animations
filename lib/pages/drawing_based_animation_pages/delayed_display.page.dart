// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:delayed_display/delayed_display.dart';

// DelayedDisplayPage: StatelessWidget Class
class DelayedDisplayPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Delayed Display Page";
  static String routeName = "/delayed-display";

  // Final: Class Properties
  final Duration initialDelay = new Duration(seconds: 1);

  // Build: Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DelayedDisplay(
                delay: initialDelay,
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 1),
                child: Text(
                  "World",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 2),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Subscribe",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 3),
                child: Text(
                  "I already have an account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
