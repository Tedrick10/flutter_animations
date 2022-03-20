// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

// FlutterSnakeNavigationBarPage: StatefulWidget Class
class FlutterSnakeNavigationBarPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Flutter Snake Navigation Bar Page";
  static String routeName = "/flutter-snake-navigation-bar";
  @override
  _FlutterSnakeNavigationBarPageState createState() =>
      _FlutterSnakeNavigationBarPageState();
}

class _FlutterSnakeNavigationBarPageState
    extends State<FlutterSnakeNavigationBarPage> {
  // Final: Class Properties
  final List<String> pageList = [
    "Water",
    "Fire",
    "Air",
    "Earth",
  ];

  // Normal: Class Properties
  int _currentIndex = 0;
  bool _currentSwitch = false;

  // Normal: Class Methods
  void _selectedIndexChange(int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  void _switchChange(bool value) {
    setState(() {
      this._currentSwitch = value;
    });
  }

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: (!this._currentSwitch)
            ? SnakeNavigationBar.color(
                onTap: this._selectedIndexChange,
                currentIndex: this._currentIndex,
                backgroundColor: Colors.black,
                snakeViewColor: Colors.white,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.red,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.water),
                    label: pageList[0],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.local_fire_department),
                    label: pageList[1],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.air),
                    label: pageList[2],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.public),
                    label: pageList[3],
                  ),
                ],
              )
            : SnakeNavigationBar.gradient(
                onTap: this._selectedIndexChange,
                currentIndex: this._currentIndex,
                snakeShape: SnakeShape.circle,
                backgroundGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.white],
                ),
                snakeViewGradient: RadialGradient(
                  colors: [Colors.greenAccent, Colors.green],
                ),
                selectedItemGradient: SweepGradient(
                  colors: [Colors.blue, Colors.red],
                ),
                unselectedItemGradient: SweepGradient(
                  colors: [Colors.indigo, Colors.pink],
                ),
                showSelectedLabels: true,
                showUnselectedLabels: false,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.water),
                    label: pageList[0],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.local_fire_department),
                    label: pageList[1],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.air),
                    label: pageList[2],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.public),
                    label: pageList[3],
                  ),
                ],
              ),
        appBar: AppBar(
          title: Text(
            FlutterSnakeNavigationBarPage.title,
            style: TextStyle(
              fontSize: 13.0,
            ),
          ),
          actions: [
            Switch(
              onChanged: this._switchChange,
              value: this._currentSwitch,
              activeColor: Colors.green,
              activeTrackColor: Colors.grey,
            ),
          ],
        ),
        body: Center(
          child: Text(this.pageList[this._currentIndex]),
        ),
      ),
    );
  }
}
