// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Constants
import '../../../constants/data.constant.dart';

// Pages
import './trulia_photo_list.page.dart';

// TruliaIndexPage: StatelessWidget Class
class TruliaIndexPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Trulia Index Page";
  static String routeName = "/trulia-index";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(TruliaPhotoListPage.routeName);
        },
        child: Hero(
          tag: 0,
          child: Center(
            child: Container(
              width: double.infinity,
              height: 300,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      photoUrlsList[0],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
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
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10.00),
                      color: Colors.black87,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 3.00),
                          Text(
                            photoUrlsList.length.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.00,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
