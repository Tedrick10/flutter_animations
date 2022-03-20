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

// TruliaCarouselPage: StatelessWidget Class
class TruliaCarouselPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Trulia Carousel Page";
  static String routeName = "/trulia-carousel";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Properties: Method Properties
    final PhotoModel photoModel =
        ModalRoute.of(context)!.settings.arguments as PhotoModel;

    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // body: SafeArea(
      //         child: Center(
      //     child: CarouselSlider(
      //       items: photoUrlsList
      //           .map(
      //             (photoUrl) => Image.network(photoUrl),
      //           )
      //           .toList(),
      //       options: CarouselOptions(
      //         height: 400.00,
      //         enableInfiniteScroll: false,
      //         initialPage: photoModel.index,
      //       ),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Hero(
          tag: photoModel.index,
          child: Center(
            child: Swiper(
              index: photoModel.index,
              itemCount: photoUrlsList.length,
              itemBuilder: (BuildContext _, int index) {
                return PhotoView(
                  imageProvider: NetworkImage(photoUrlsList[index]),
                  loadingBuilder: (
                    BuildContext _,
                    ImageChunkEvent? loadingProgress,
                  ) {
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
