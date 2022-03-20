// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:carousel_slider/carousel_slider.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:photo_view/photo_view.dart';

// Models
import '../../../models/photo.model.dart';

// Constants
import '../../../constants/data.constant.dart';

// Pages
import './imyanmar_house_photo_view.page.dart';

// IMyanmarHouseIndexPage: StatelessWidget Class
class IMyanmarHouseIndexPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "iMyanmar House Index Page";
  static String routeName = "/imyanmar-house-index";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Swiper(
            autoplay: true,
            pagination: new SwiperPagination(
              margin: new EdgeInsets.all(5.0),
            ),
            itemCount: photoUrlsList.length,
            itemBuilder: (BuildContext _, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    IMyanmarHousePhotoViewPage.routeName,
                    arguments: PhotoModel(
                      index: index,
                      photoUrl: photoUrlsList[index],
                    ),
                  );
                },
                child: Hero(
                  tag: index,
                  child: Image.network(
                    photoUrlsList[index],
                    fit: BoxFit.cover,
                    loadingBuilder: (
                      BuildContext _,
                      Widget child,
                      ImageChunkEvent? loadingProgress,
                    ) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          // value: loadingProgress.expectedTotalBytes != null
                          //     ? loadingProgress.cumulativeBytesLoaded /
                          //         (loadingProgress.expectedTotalBytes)
                          //     : null,
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
