// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Constants
import '../../../constants/data.constant.dart';

// Models
import '../../../models/photo.model.dart';

// Pages
import './trulia_carousel.page.dart';

// TruliaPhotoListPage: StatelessWidget Class
class TruliaPhotoListPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Trulia Photo List Page";
  static String routeName = "/trulia-photo-list";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: photoUrlsList.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Listing Photos (${photoUrlsList.length})",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }
            return GestureDetector(
              onTap: () {
                // Navigator.of(context).pushNamed(TruliaCarouselPage.routeName, );
                Navigator.pushNamed(
                  context,
                  TruliaCarouselPage.routeName,
                  arguments: PhotoModel(
                    index: index - 1,
                    photoUrl: photoUrlsList[index - 1],
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.00,
                  vertical: 5.00,
                ),
                child: Hero(
                  tag: index - 1,
                  child: Image.network(
                    photoUrlsList[index - 1],
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
              ),
            );
          },
        ),
      ),
    );
  }
}
