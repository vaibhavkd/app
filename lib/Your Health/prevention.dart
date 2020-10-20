import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Prevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.green),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        //alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Image(
                                image: AssetImage('assets/GOI.png'),
                                height: 30,
                                width: 170,
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Image(
                                image: AssetImage('assets/Google.png'),
                                height: 30,
                                width: 80,
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.green,
                      ),
                      Image(
                        image: AssetImage('assets/MaskOn.png'),
                        height: 80,
                        width: 80,
                      ),
                      Text(
                        "Wear a mask.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Save lives.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Wear a face cover",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Wash your hands",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Keep a safe distance\n",
                        style: TextStyle(fontSize: 25),
                      ),
                      //Row(),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "General public health information",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                            Container(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  launch("https://www.mohfw.gov.in/");
                                },
                                child: Text("More Info"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.green),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/face-protection.png'),
                                      height: 40,
                                      width: 40,
                                    ),
                                    Text(
                                      'Wear a mask',
                                      style: TextStyle(fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/antibacterial-gel.png'),
                                      height: 40,
                                      width: 40,
                                    ),
                                    Text(
                                      'Wash your hands',
                                      style: TextStyle(fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/distance.png'),
                                      height: 40,
                                      width: 40,
                                    ),
                                    Text(
                                      'Follow social distancing',
                                      style: TextStyle(fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "To prevent the spread of COVID-19:\n• Clean your hands often. Use soap and water, or an alcohol-based hand rub.\n• Maintain a safe distance from anyone who is coughing or sneezing.\n• Wear a mask when physical distancing is not possible.\n• Don’t touch your eyes, nose or mouth.\n• Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.\n• Stay home if you feel unwell.\n• If you have a fever, cough and difficulty breathing, seek medical attention.",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Calling in advance allows your healthcare provider to quickly direct you to the right health facility. This protects you, and prevents the spread of viruses and other infections.",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Masks can help prevent the spread of the virus from the person wearing the mask to others. Masks alone do not protect against COVID-19, and should be combined with physical distancing and hand hygiene. Follow the advice provided by your local health authority.",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Linecons.globe),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                child: Text("Learn more on who.int"),
                                onTap: () => launch(
                                    'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "For informational purposes only. Consult your local medical authority for advice.",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[800],
                        ),
                      ),
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
}
