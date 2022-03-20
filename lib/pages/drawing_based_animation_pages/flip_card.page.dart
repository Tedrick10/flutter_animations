// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:flip_card/flip_card.dart';

// FlipCardPage: StatelessWidget Class
class FlipCardPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Flip Card Page Example";
  static String routeName = "/flip-card";

  // Normal: Class Properties
  GlobalKey<FlipCardState> cardKey1 = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> cardKey2 = GlobalKey<FlipCardState>();

  // Widget: Class Methods
  Widget _flipCardWidget(String flipTitle, FlipDirection flipDirection,
      GlobalKey<FlipCardState> cardKey) {
    return FlipCard(
      key: cardKey,
      direction: flipDirection,
      front: Container(
        width: double.infinity,
        height: 500.0,
        child: Card(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This is flip card with $flipTitle flip direction",
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => cardKey.currentState!.toggleCard(),
                    child: Text("Toggle"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      back: Container(
        width: double.infinity,
        height: 500.0,
        child: Card(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Back",
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => cardKey.currentState!.toggleCard(),
                    child: Text("Toggle"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flip Card Page"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              this._flipCardWidget(
                "horizontal",
                FlipDirection.HORIZONTAL,
                this.cardKey1,
              ),
              this._flipCardWidget(
                "vertical",
                FlipDirection.VERTICAL,
                this.cardKey2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
