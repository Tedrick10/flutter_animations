// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Animation: Widgets
//// DrawingBasedAnimations
import '../animations/drawing_based_animation/curved_navigation_bar.animation.dart';

// Common: Widgets
import '../widgets/common/button.widget.dart';
import '../widgets/common/drawer.widget.dart';

// Constants
import "../constants/data.constant.dart";

// MaterialWidgetsListPage: StatelessWidget Class
class MaterialWidgetsListPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Material Widgets List Page";
  static String routeName = "/material-widgets-list";

  // Build: Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ...materialWidgetsList
                  .map(
                    (item) => ButtonWidget(
                      title: item.title,
                      routeName: item.routeName,
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
