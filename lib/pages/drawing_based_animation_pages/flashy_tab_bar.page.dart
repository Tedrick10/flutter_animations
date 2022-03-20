// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
// ignore: import_of_legacy_library_into_null_safe
import 'package:flashy_tab_bar/flashy_tab_bar.dart';

// FlashyTabBarPage: StatelessWidget Class
class FlashyTabBarPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Flashy Tab Bar Page";
  static String routeName = "/flashy-tab-bar";

  @override
  _FlashyTabBarPageState createState() => _FlashyTabBarPageState();
}

class _FlashyTabBarPageState extends State<FlashyTabBarPage> {
  // Final: Class Properties
  final Widget eventPage = Center(
    child: Text("This is event page."),
  );
  final Widget searchPage = Center(
    child: Text("This is search page."),
  );
  final Widget menuPage = Center(
    child: Text("This is menu page."),
  );
  final Widget settingsPage = Center(
    child: Text("This is settings page."),
  );

  // Normal: Class Properties
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Final: Build Method Properties
    final List<Widget> pagesList = [
      eventPage,
      searchPage,
      menuPage,
      settingsPage,
    ];

    // Returning Widgets
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: this._currentIndex,
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.event),
            title: Text("Events"),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.menu),
            title: Text("Menu"),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
        onItemSelected: (int indexChanged) {
          setState(() {
            this._currentIndex = indexChanged;
          });
        },
      ),
      appBar: AppBar(
        title: Text(FlashyTabBarPage.title),
      ),
      body: pagesList[this._currentIndex],
    );
  }
}
