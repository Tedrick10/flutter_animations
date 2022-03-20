// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Models
import '../../models/shopping_item.model.dart';

// ShoppingItemWidget: StatelessWidget Class
class ShoppingItemWidget extends StatelessWidget {
  // Final: Class Properties
  final ShoppingItemModel shoppingItemModel;
  final Animation<double> animation;
  final VoidCallback onClicked;

  // Constructor
  ShoppingItemWidget({
    required this.shoppingItemModel,
    required this.animation,
    required this.onClicked,
  });

  // Build: Override Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return SizeTransition(
      sizeFactor: this.animation,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 10,
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(this.shoppingItemModel.imageUrl),
            radius: 32,
          ),
          title: Text(
            this.shoppingItemModel.title,
            style: TextStyle(fontSize: 20.00),
          ),
          trailing: IconButton(
            onPressed: this.onClicked,
            icon: Icon(
              Icons.dangerous,
              size: 30.00,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
