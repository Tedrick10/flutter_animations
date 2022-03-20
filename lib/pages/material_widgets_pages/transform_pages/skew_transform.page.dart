// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

// SkewTransformPage: StatelessWidget Class
class SkewTransformPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Skew Transform Page";
  static String routeName = "/skew-transform";

  // Final: Class Properties
  final Function? onPressedCallBack;

  // Constructor
  SkewTransformPage({this.onPressedCallBack});

  LinkableElement linkableElement =
      new LinkableElement("www.google.com", "https://www.google.com");

  Future<void> onClickLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $linkableElement';
    }
  }

  @override
  Widget build(BuildContext context) {
    // String? taskTitle; // Note: You can also set as (String taskTitle = '';)
    String taskTitle;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: title.length > 15 ? 13.0 : 15.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Linkify(
            onOpen: (link) {
              this.onClickLink(this.linkableElement.url);
            },
            // text: "Linkify clicks: ${this.linkableElement.url}",
            text: "Linkficy clicks: ${linkableElement.text}",
            style: TextStyle(color: Colors.black),
            linkStyle: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
