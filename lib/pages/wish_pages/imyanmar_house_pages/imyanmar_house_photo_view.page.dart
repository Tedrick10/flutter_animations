// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:photo_view/photo_view.dart';

// Models
import '../../../models/photo.model.dart';

// IMyanmarHousePhotoViewPage: StatelessWidget Class
class IMyanmarHousePhotoViewPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "IMyanmar House Photo View Page";
  static String routeName = "/imyanmar-house-photo-view";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Final: Method Properties
    final PhotoModel photoModel =
        ModalRoute.of(context)!.settings.arguments as PhotoModel;

    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Hero(
          tag: photoModel.index,
          child: Container(
            child: PhotoView(
              imageProvider: NetworkImage(photoModel.photoUrl.toString()),
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
            ),
          ),
        ),
      ),
    );
  }
}
