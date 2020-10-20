import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(new DescriptionPage(null));

class DescriptionPage extends StatelessWidget {
  static String tag = 'description-page';
  DescriptionPage(this.urlnews);
  final String urlnews;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Full Article",
          style: new TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: EasyWebView(
          src: urlnews,
          isHtml: false, // Use Html syntax
          isMarkdown: false, // Use markdown syntax
          onLoaded: () {},
        ),
      ),
    );
  }
}
