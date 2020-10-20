import 'package:flutter/material.dart';
import 'package:pune_fights_covid19/Your%20Health/prevention.dart';
import 'package:pune_fights_covid19/Your%20Health/symptoms.dart';
import 'package:pune_fights_covid19/Your%20Health/treatments.dart';
import 'package:pune_fights_covid19/Your%20Health/coping.dart';

class YourHealth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _YourHealthState();
  }
}

class _YourHealthState extends State<YourHealth>
    with AutomaticKeepAliveClientMixin<YourHealth> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      //initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Covid 19',
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold),
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
                      child: Text('Symptoms'),
                    ),
                    Tab(
                      child: Text('Prevention'),
                    ),
                    Tab(
                      child: Text('Treatments'),
                    ),
                    Tab(
                      child: Text('Coping'),
                    ),
                  ],
                ),
                preferredSize: Size.fromHeight(30.0)),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Symptoms(),
                ),
              ),
              Container(
                child: Center(
                  child: Prevention(),
                ),
              ),
              Container(
                child: Center(
                  child: Treatments(),
                ),
              ),
              Container(
                child: Center(
                  child: Coping(),
                ),
              )
            ],
          )),
    );
  }
}
