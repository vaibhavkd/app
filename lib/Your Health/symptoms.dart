import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/linecons_icons.dart';
//import 'package:pune_fights_covid19/scrollable_symptoms.dart';
import 'package:url_launcher/url_launcher.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.green),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "COVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness and recover without hospitalization."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/fever.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/cough.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/headache.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.green[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "MOST COMMON:\n•Fever •Dry cough •Tiredness",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          //border: Border.all(color: Colors.green[600]),
                          color: Colors.green[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "LESS COMMON:\n•Aches and pains •Sore throat •Diarrhoea •Conjunctivitis •Headache •Loss of taste or smell •A rash on skin, or discolouration of fingers or toes",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          //border: Border.all(color: Colors.green[900]),
                          color: Colors.green[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "SERIOUS SYMPTOMS:\n•Difficulty breathing •Chest pain •Loss of speech or movement",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.green,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Seek immediate medical attention if you have serious symptoms. Always call before visiting your doctor or health facility."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "People with mild symptoms who are otherwise healthy should manage their symptoms at home."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days."),
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
                                'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/question-and-answers-hub/q-a-detail/q-a-coronaviruses#:~:text=symptoms'),
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
      ),
    );
  }
}
