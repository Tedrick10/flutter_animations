// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

// Pages
import '../../pages/material_widgets_list.page.dart';
import '../../pages/drawing_based_animation_list.page.dart';
import '../../pages/code_based_animation_list.page.dart';
import '../../pages/wish_list.page.dart';

// DrawerWidget: StatelessWidget Class
class DrawerWidget extends StatelessWidget {
  // Final: Class Properties
  final ZoomDrawerController _drawerController = new ZoomDrawerController();

  // Widget: Class Properties
  Widget _buttonWidget(BuildContext context, String routeName, String title) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Container(
        width: double.infinity,
        height: 50.0,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Build: Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100),
          Divider(thickness: 2),
          this._buttonWidget(
            context,
            MaterialWidgetsListPage.routeName,
            MaterialWidgetsListPage.title,
          ),
          Divider(thickness: 2),
          this._buttonWidget(
            context,
            CodeBasedAnimationListPage.routeName,
            CodeBasedAnimationListPage.title,
          ),
          Divider(thickness: 2),
          this._buttonWidget(
            context,
            DrawingBasedAnimationListPage.routeName,
            DrawingBasedAnimationListPage.title,
          ),
          Divider(thickness: 2),
          this._buttonWidget(
            context,
            WishListPage.routeName,
            WishListPage.title,
          ),
          Divider(thickness: 2),
        ],
      ),
    );
  }
}
