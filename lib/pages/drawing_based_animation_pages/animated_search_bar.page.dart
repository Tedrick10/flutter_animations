// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:animated_search_bar/animated_search_bar.dart';

// AnimatedSearchBarPage: StatelessWidget Class
class AnimatedSearchBarPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Animated Search Bar Page";
  static String routeName = "/animated-search-bar";

  @override
  _AnimatedSearchBarPageState createState() => _AnimatedSearchBarPageState();
}

class _AnimatedSearchBarPageState extends State<AnimatedSearchBarPage> {
  // Normal: Class Properties
  String searchText = "";

  // Build: Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: AnimatedSearchBar(
          label: "Search Something Here",
          labelStyle: TextStyle(fontSize: 16),
          searchStyle: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          searchDecoration: InputDecoration(
            hintText: "Search",
            alignLabelWithHint: true,
            fillColor: Colors.white,
            focusColor: Colors.white,
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            print("value on Change");
            setState(() {
              searchText = value;
            });
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            AnimatedSearchBar(
              label: "Search Something Here",
              onChanged: (value) {
                print("value on Change");
                setState(() {
                  searchText = value;
                });
              },
            ),
            Text(
              searchText,
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
