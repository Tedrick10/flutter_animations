// Flutter: Existing Libraries
import "package:flutter/material.dart";

// Flutter: External Libraries
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// CurvedNavigationBarAnimation: StatefulWidget Class
class CurvedNavigationBarAnimation extends StatefulWidget {
  @override
  _CurvedNavigationBarAnimationState createState() =>
      _CurvedNavigationBarAnimationState();
}

class _CurvedNavigationBarAnimationState
    extends State<CurvedNavigationBarAnimation> {
  // Normal: Class Properties
  int index = 1;

  // Style: Class Properties
  double _iconSize = 30;
  Color _iconColor = Colors.white;

  // CurvedNavigationBar: Class Methods
  void indexHandler(int index) {
    setState(() {
      this.index = index;
    });
  }

  bool indexChangeHandler(int index) {
    print("The current index is $index.");

    return true;
  }

  // Method: Build
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return CurvedNavigationBar(
      index: this.index,
      items: <Widget>[
        Icon(
          Icons.add,
          size: this._iconSize,
          color: this._iconColor,
        ),
        Icon(
          Icons.list,
          size: this._iconSize,
          color: this._iconColor,
        ),
        Icon(
          Icons.compare_arrows,
          size: this._iconSize,
          color: this._iconColor,
        ),
      ],
      onTap: this.indexHandler,
      color: Colors.black,
      // Default: Colors.white
      buttonBackgroundColor: Colors.black,
      // Default: Same color with 'color' properties.
      backgroundColor: Colors.white,
      // Default Color: Colors.blueAccent
      animationCurve: Curves.linear,
      // Default: Curves.easeOutCubic
      animationDuration: Duration(milliseconds: 500),
      // Default: Duration(milliseconds: 600)
      height: 70.0,
      // 0.0 <= Height <= 75.0
      letIndexChange: this.indexChangeHandler,
    );
  }
}
