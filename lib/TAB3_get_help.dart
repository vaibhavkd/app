import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GetHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.lightGreenAccent[300]),
        alignment: Alignment.center,
        child: Column(
          children: [
            new Container(
              child: Text(" "),
            ),
            new Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(17)),
              ),
              child: Text(
                "  HELPLINES  ",
                style: TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Toll-Free Helpline\nMinistry of Health and Family Welfare',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                                letterSpacing: 1,
                                wordSpacing: 1,
                              ),
                            ),
                          ),
                          Text(
                            'Toll Free: 1075',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    new IconButton(
                      icon: new Icon(Icons.call),
                      color: Colors.blue[700],
                      onPressed: phone1,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Helpline Email ID\nMinistry of Health and Family Welfare',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                wordSpacing: 1,
                                color: Colors.red[900],
                              ),
                            ),
                          ),
                          Text(
                            'ncov2019@gmail.com',
                            style: TextStyle(
                              color: Colors.red[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    new IconButton(
                      icon: new Icon(Icons.email),
                      color: Colors.red[700],
                      onPressed: sendEmailToMyGov,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'MyGov Corona Helpdesk\nLive Help Desk (WhatsApp)\nhttps://wa.me/919013151515',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.green[900],
                                letterSpacing: 1,
                                wordSpacing: 1,
                              ),
                            ),
                          ),
                          Text(
                            '+91 9013151515',
                            style: TextStyle(
                              color: Colors.green[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    new IconButton(
                      icon: new Icon(Icons.message),
                      color: Colors.green[700],
                      onPressed: myGovHelp,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Corona Virus Maharashtra Helpline',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                                letterSpacing: 1,
                                wordSpacing: 1,
                              ),
                            ),
                          ),
                          Text(
                            '+91 020-26127394',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    new IconButton(
                      icon: new Icon(Icons.call),
                      color: Colors.blue[700],
                      onPressed: phone2,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Ambulance',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                wordSpacing: 1,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),
                          Text(
                            '108',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    new IconButton(
                      icon: new Icon(Icons.call),
                      color: Colors.blue[700],
                      onPressed: phone3,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'General Helpline',
                              style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  wordSpacing: 1,
                                  color: Colors.blue[900]),
                            ),
                          ),
                          Text(
                            '104',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    new IconButton(
                      icon: new Icon(Icons.call),
                      color: Colors.blue[700],
                      onPressed: phone4,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Pune Muncipal Corporation',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                wordSpacing: 1,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),
                          Text(
                            '+91 1800-1030-222',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    new IconButton(
                      icon: new Icon(Icons.call),
                      color: Colors.blue[700],
                      onPressed: phone5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void phone1() {
    launch("tel:1075");
  }

  void phone2() {
    launch("tel:2026127394");
  }

  void phone3() {
    launch("tel:108");
  }

  void phone4() {
    launch("tel:104");
  }

  void phone5() {
    launch("tel:18001030222");
  }

  void myGovHelp() {
    launch('https://wa.me/919013151515?text=Hi');
  }

  void sendEmailToMyGov() {
    launch("mailto:ncov2019@gmail.com");
  }
}
