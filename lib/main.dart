// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Constants
import './constants/route.constant.dart';

// Pages: To Delcare Routes
import '../pages/home.page.dart';

// Main: Function
void main() {
  runApp(MyApp());
}

// MyApp: StatelessWidget Class
class MyApp extends StatelessWidget {
  // Build: Method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Animations",
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: routeList,
    );
  }
}
