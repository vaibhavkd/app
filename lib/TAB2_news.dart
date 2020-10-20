import 'package:flutter/material.dart';
import 'package:pune_fights_covid19/News/cases.dart';
import 'package:pune_fights_covid19/News/newsupdates.dart';

class News extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _YourNewsState();
  }
}

class _YourNewsState extends State<News>
    with AutomaticKeepAliveClientMixin<News> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      //initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'News & Updates',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.redAccent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.redAccent,
                          Colors.orangeAccent,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.redAccent,
                    ),
                    tabs: [
                      Tab(
                        child: Text('W.H.O.'),
                      ),
                      Tab(
                        child: Text('Cases Updates'),
                      ),
                      Tab(
                        child: Text('News'),
                      ),
                      Tab(
                        child: Text('United Nations'),
                      ),
                    ]),
                preferredSize: Size.fromHeight(30.0)),
          ),
          body: TabBarView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.green,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: NewsFeedPage(1),
                    ),
                  ),
                ),
              ),
              build2(context,
                  'https://www.bing.com/covid/local/pune_maharashtra_india?form=C19WID'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.green,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: NewsFeedPage(3),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.green,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: NewsFeedPage(4),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget build1(BuildContext context, url) {
    return WebViewContainer(url);
  }

  Widget build2(BuildContext context, url) {
    Widget child;
    try {
      child = build1(context, url);
    } catch (error) {
      child = AlertDialog(
        title: new Icon(Icons.sentiment_dissatisfied_outlined),
        content: new Text("Please Turn On Mobile Data."),
      );
    }
    return child;
  }
}
