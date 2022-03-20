// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Models
import '../../models/shopping_item.model.dart';

// Constants
import '../../constants/shopping_list.constant.dart';

// Widgets
import '../../widgets/code_based_animation_widgets/shopping_item.widget.dart';

// AnimatedListStatePage: StatelessWidget Class
class AnimatedListStatePage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Animated List State Page";
  static String routeName = "/animated-list-state";

  // Final: Class Properties
  final GlobalKey<AnimatedListState> key = new GlobalKey<AnimatedListState>();

  // Normal: Class Methods
  void insertItem(int index, ShoppingItemModel shoppingItemModel) {
    shoppingItemsList.insert(
      index,
      shoppingItemModel,
    );

    this.key.currentState!.insertItem(index);
  }

  void removeItem(int index) {
    final item = shoppingItemsList.removeAt(index);
    key.currentState!.removeItem(
      index,
      (context, animation) => buildItem(item, index, animation),
    );
  }

  // Widget: Class Methods
  Widget buildItem(
      ShoppingItemModel item, int index, Animation<double> animation) {
    return ShoppingItemWidget(
      shoppingItemModel: item,
      animation: animation,
      onClicked: () {
        this.removeItem(index);
      },
    );
  }

  Widget buildInsertButton() {
    return ElevatedButton(
      onPressed: () {
        this.insertItem(shoppingItemsList.length, shoppingItemsList[0]);
      },
      child: Text(
        "Insert Item",
        style: TextStyle(
          fontSize: 20.00,
        ),
      ),
    );
  }

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black45,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: AnimatedList(
                    key: this.key,
                    initialItemCount: shoppingItemsList.length,
                    itemBuilder: (context, index, animation) {
                      return buildItem(
                        shoppingItemsList[index],
                        index,
                        animation,
                      );
                    },
                  ),
                ),
              ),
              this.buildInsertButton(),
            ],
          ),
        ),
      ),
    );
  }
}
