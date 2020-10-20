import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:http/http.dart' as http;
import 'constant.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'description.dart';
import 'dart:io';

class NewsFeedPage extends StatefulWidget {
  //Template({Key key}) : super(key: key);

  final text;
  NewsFeedPage(this.text);
  @override
  createState() => _NewsFeedPage(this.text);
}

class _NewsFeedPage extends State<NewsFeedPage>
    with AutomaticKeepAliveClientMixin<NewsFeedPage> {
  @override
  bool get wantKeepAlive => true;
  static String tag = "NewsFeedPage-tag";
  _NewsFeedPage(this.text);
  final int text;

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    String title;
    if (text == 1) {
      title = "Updates from WHO";
    } else if (text == 2) {
      title = "Global Updates";
    } else if (text == 3) {
      title = "Health Updates";
    } else if (text == 4) {
      title = "Updates from U.N.";
    }
    return Scaffold(
      body: new SafeArea(
          child: new Column(
        children: [
          new Expanded(
            flex: 1,
            child: new Container(
                width: width,
                color: Colors.white,
                child: new GestureDetector(
                  child: new FutureBuilder<List<News>>(
                    future: fatchNews(
                        http.Client(), text), // a Future<String> or null
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return AlertDialog(
                          title:
                              new Icon(Icons.sentiment_dissatisfied_outlined),
                          content: new Text(
                              "${snapshot.error}\nPlease Turn On Mobile Data."),
                        );
                      }

                      return snapshot.hasData
                          ? NewsList(news: snapshot.data)
                          : Center(child: CircularProgressIndicator());
                    },
                  ),
                )),
          ),
        ],
      )),
    );
  }
}

//"top-headlines?country=in&category=business&apiKey=" +
Future<List<News>> fatchNews(http.Client client, id) async {
  String url;
  if (id == 1) {
    url = Constant.base_url +
        "everything?q=covid&domains=who.int&language=en&sortBy=publishedAt&apiKey=" +
        Constant.key;
  } else if (id == 2) {
    url = Constant.base_url +
        "top-headlines?q=coronavirus&language=en&sortBy=publishedAt&apiKey=" +
        Constant.key;
  } else if (id == 3) {
    url = Constant.base_url +
        "top-headlines?country=in&category=health&apiKey=" +
        Constant.key;
  } else if (id == 4) {
    url = Constant.base_url +
        "everything?q=covid&domains=un.org&language=en&sortBy=publishedAt&apiKey=" +
        Constant.key;
  }
  final response = await client.get(url);
  return compute(parsenews, response.body);
}

List<News> parsenews(String responsebody) {
  final parsed = json.decode(responsebody);
  return (parsed["articles"] as List)
      .map<News>((json) => new News.fromJson(json))
      .toList();
}

class News {
  String auther;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;

  News(
      {this.auther,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      auther: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
    );
  }
}

class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        return new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            side: BorderSide(
              color: Colors.redAccent,
              width: 1.0,
            ),
          ),
          child: new ListTile(
            leading: Container(
              height: 50,
              width: 70,
              child: build2(context, index),
            ),
            title: Text(news[index].title),
            subtitle: Text(
              news[index].publishedAt,
              style: TextStyle(color: Colors.grey[600], fontSize: 11),
            ),
            onTap: () {
              var url = news[index].url;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new DescriptionPage(url),
                  ));
            },
          ),
        );
      },
    );
  }

  Widget build1(BuildContext context, index) {
    return Image.network(news[index].urlToImage);
  }

  Widget build2(BuildContext context, index) {
    Widget child;
    try {
      child = build1(context, index);
    } catch (error) {
      child = Icon(
        Entypo.newspaper,
        color: Colors.redAccent,
      );
    }
    return child;
  }
}
