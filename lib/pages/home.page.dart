// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:drawerbehavior/drawerbehavior.dart';

// Pages
import './material_widgets_list.page.dart';
import './drawing_based_animation_list.page.dart';

// Common: Widgets
import '../widgets/common/button.widget.dart';
import '../widgets/common/drawer.widget.dart';

// Constants
import "../constants/data.constant.dart";

// HomePage: StatelessWidget Class
class HomePage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Home Page";
  static String routeName = "/home";

  // Build: Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          "Hello, Welcome from animation project.",
        ),
      ),
    );
  }
}
