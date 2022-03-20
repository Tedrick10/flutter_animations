// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:flutter_spinkit/flutter_spinkit.dart';

// FlutterSpinKitPage: StatelessWidget Class
class FlutterSpinKitPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Flutter Spinkit Page";
  static String routeName = "/flutter-spinkit";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpinKitRotatingCircle(
                  color: Colors.blue,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Rotating Circle",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitRotatingPlain(
                  color: Colors.deepOrange,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Rotating Plain",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitDoubleBounce(
                  color: Colors.blueGrey,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Double Bounce",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitChasingDots(
                  color: Colors.orangeAccent,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Chasing Dots",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitPulse(
                  color: Colors.grey,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Pulse",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitThreeBounce(
                  color: Colors.deepOrange,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Three Bounce",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitCircle(
                  color: Colors.greenAccent,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Circle",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                SpinKitFoldingCube(
                  color: Colors.greenAccent,
                  size: 100.0,
                ),
                SizedBox(height: 25.0),
                Text(
                  "Spinkit Folding Cube",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitFadingCircle(
                  size: 100.0,
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.red : Colors.green,
                      ),
                    );
                  },
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Fading Circle",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SpinKitPumpingHeart(
                  color: Colors.red,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Pumping Heart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitWave(
                  color: Colors.black,
                  size: 100,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Wave",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SpinKitWanderingCubes(
                  color: Colors.orange,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Wandering Cube",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitPouringHourGlassRefined(
                  color: Colors.indigo,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Pouring Hour Glass Refined",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                SpinKitCubeGrid(
                  color: Colors.lime,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Cube Grid",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                SpinKitSpinningLines(
                  color: Colors.purple,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Spinning Lines",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                SpinKitSquareCircle(
                  color: Colors.cyan,
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Spinkit Square Circle",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
