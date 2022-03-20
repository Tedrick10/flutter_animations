// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:card_swiper/card_swiper.dart';

// CardSwiperPage: StatelessWidget Class
class CardSwiperPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Card Swiper Page";
  static String routeName = "/card-swiper";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    "https://via.placeholder.com/288x188",
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 10,
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
