// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Common: Widgets
import '../widgets/common/button.widget.dart';
import '../widgets/common/drawer.widget.dart';

// Constants
import "../constants/data.constant.dart";

// CodeBasedAnimationListPage: StatelessWidget Class
class CodeBasedAnimationListPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Code Based Animation List Page";
  static String routeName = "/code-based-animation-list";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
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
              ...codeBasedAnimationsList
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
