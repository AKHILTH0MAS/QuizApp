import 'package:flutter/material.dart';
import 'package:quizap/constants.dart';
import 'package:quizap/question.dart';
import 'dart:async';

class Easy extends StatefulWidget {
  const Easy({super.key});

  @override
  State<Easy> createState() => _EasyState();
}

bool easy = false;
int easyscore = 0;

class _EasyState extends State<Easy> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Are you sure?',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            content: const Text(
              'Do you want to exit the quiz',
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
                    easyscore = 0;
                    easy = false;
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
  int questionlength = Question.sample_data_easy.length;
  int correctans = 0;
  bool correctAns = false;
  bool gesture = true;
  void checkrange() {
    if (questionnumer == questionlength) {
      setState(() {
        gameover = true;
        selectedindex = 0;
        questionnumer = 0;
        easy = true;
        Navigator.pushReplacementNamed(context, '/congratspage');
      });
    }
  }

  void checkanswer() {
    if (selectedindex ==
        Question.sample_data_easy[questionnumer]['answer_index']) {
      setState(() {
        correctAns = true;
        easyscore++;
        Timer(
            const Duration(
              milliseconds: 1000,
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
              milliseconds: 1000,
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
            "Easy",
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
                  "Score = $easyscore",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "${questionnumer + 1}.\t${Question.sample_data_easy[questionnumer]['question']}",
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
                            " ${Question.sample_data_easy[questionnumer]['options'][index]}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white),
                          )),
                    );
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              if (tapped) ...[
                Container(
                  padding: const EdgeInsets.all(19),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: correctAns ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    "${Question.sample_data_easy[questionnumer]['options'][correctans]}",
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
      correctans = Question.sample_data_easy[questionnumer]['answer_index'];
      gesture = false;
    });
  }
}
