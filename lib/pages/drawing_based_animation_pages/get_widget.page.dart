// Dart: Existing Libriraries
import 'dart:io';

// Flutter: Existing Libraries
import 'package:flutter/material.dart';
import 'package:webview_flutter/platform_interface.dart';

// Flutter: External Libraries
import 'package:webview_flutter/webview_flutter.dart';

// GetWidgetPage: StatefulWidget Class
class GetWidgetPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Get Widget Page";
  static String routeName = "/get-widget";

  @override
  _GetWidgetPageState createState() => _GetWidgetPageState();
}

class _GetWidgetPageState extends State<GetWidgetPage> {
  // Life Cycle Hooks: Class Methods
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(GetWidgetPage.title),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://www.getwidget.dev/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebResourceError: (WebResourceError webviewerrr) {
            print("Handle your Error Page here");
          },
        ),
      ),
    );
  }
}
