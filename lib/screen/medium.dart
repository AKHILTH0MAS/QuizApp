import 'dart:async';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../question.dart';

class Medium extends StatefulWidget {
  const Medium({super.key});

  @override
  State<Medium> createState() => _MediumState();
}

@override
int mediumscore = 0;
bool medium = false;

class _MediumState extends State<Medium> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Are you sure?😢',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            content: const Text(
              'Do you want to exit the quiz?',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  setState(() {
                    questionnumer = 0;
                    mediumscore = 0;
                    medium = false;
                    tapped = false;
                    selectedindex = 0;
                    gesture = true;
                  });
                },
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  late int selectedindex;
  int questionnumer = 0;
  int qncontroller = 0;
  bool gameover = false;
  bool tapped = false;
  int questionlength = Question.sample_data_medium.length;
  int correctans = 0;
  bool correctAns = false;
  bool gesture = true;
  void checkrange() {
    if (questionnumer == questionlength) {
      setState(() {
        gameover = true;
        selectedindex = 0;
        questionnumer = 0;
        medium = true;
        Navigator.pushReplacementNamed(context, '/congratspage');
      });
    }
  }

  void checkanswer() {
    if (selectedindex ==
        Question.sample_data_medium[questionnumer]['answer_index']) {
      setState(() {
        correctAns = true;
        mediumscore++;
        Timer(
            const Duration(
              seconds: 1,
            ), () {
          setState(() {
            questionnumer++;
            tapped = false;
            checkrange();
            gesture = true;
          });
        });
      });
    } else {
      setState(() {
        correctAns = false;

        Timer(
            const Duration(
              seconds: 1,
            ), () {
          setState(() {
            questionnumer++;
            tapped = false;
            checkrange();
            gesture = true;
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: navyBlueColor,
        appBar: AppBar(
          foregroundColor: lightBlueColor,
          backgroundColor: navyBlueColor,
          title: const Text(
            "Medium",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: darkBlueColor.withOpacity(0.5),
                    border: Border.all(
                      color: boxBOrderColor,
                    )),
                child: Text(
                  "Score = $mediumscore",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "${questionnumer + 1}.\t${Question.sample_data_medium[questionnumer]['question']}",
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        gesture ? tappedGestureecttre(index) : null;
                      },
                      child: Container(
                          margin: const EdgeInsets.only(top: defualtPadding),
                          padding: const EdgeInsets.symmetric(
                              horizontal: defualtPadding,
                              vertical: defualtPadding / 2),
                          decoration: BoxDecoration(color: darkBlueColor),
                          child: Text(
                            "${index + 1} . ${Question.sample_data_medium[questionnumer]['options'][index]}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white),
                          )),
                    );
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              if (tapped) ...[
                Container(
                  padding: const EdgeInsets.all(19),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: correctAns ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    "${Question.sample_data_medium[questionnumer]['options'][correctans]}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void tappedGestureecttre(int index) {
    return setState(() {
      selectedindex = index;
      checkanswer();
      tapped = true;
      correctans = Question.sample_data_medium[questionnumer]['answer_index'];
      gesture = false;
    });
  }
}
