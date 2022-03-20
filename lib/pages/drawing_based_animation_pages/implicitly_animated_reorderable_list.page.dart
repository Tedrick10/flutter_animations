// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:implicitly_animated_reorderable_list/transitions.dart';

// Models
import '../../models/language.model.dart';

// ImplicitlyAnimatedReorderableListPage: StatelessWidget Class
class ImplicitlyAnimatedReorderableListPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Implicitly Animated Reorderable List Page";
  static String routeName = "/implicitly-animated-reorderable-list";

  // Final: Class Properties
  final List<LanguageModel> _itemList = [
    LanguageModel(id: "001", name: "English"),
    LanguageModel(id: "002", name: "French"),
    LanguageModel(id: "003", name: "Italy"),
    LanguageModel(id: "004", name: "Spanish"),
    LanguageModel(id: "005", name: "Portugese"),
    LanguageModel(id: "006", name: "Myanmar"),
    LanguageModel(id: "007", name: "Thailand"),
    LanguageModel(id: "008", name: "Japanese"),
    LanguageModel(id: "009", name: "Korean"),
    LanguageModel(id: "010", name: "Vietnumese"),
  ];

  // Build: Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(ImplicitlyAnimatedReorderableListPage.title),
      ),
      body: ImplicitlyAnimatedList<LanguageModel>(
        items: this._itemList,
        itemBuilder: (context, animation, item, index) {
          return SizeFadeTransition(
            child: Text(item.name),
            animation: animation,
            curve: Curves.easeInOut,
            sizeFraction: 0.7,
          );
        },
        removeItemBuilder: (context, animation, oldItem) {
          return FadeTransition(
            opacity: animation,
            child: Text(oldItem.name),
          );
        },
        areItemsTheSame: (item1, item2) => item1.id == item2.id,
      ),
    );
  }
}
