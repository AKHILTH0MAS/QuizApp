import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizap/constants.dart';
import 'package:quizap/screen/easy.dart';
import 'package:quizap/screen/hard.dart';
import 'package:quizap/screen/medium.dart';

class CongrtsPage extends StatefulWidget {
  const CongrtsPage({super.key});

  @override
  State<CongrtsPage> createState() => _CongrtsPageState();
}

class _CongrtsPageState extends State<CongrtsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(defualtPadding),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text(
                  "Congragulations",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/icons/congrats.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "You have completed the quiz",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: const Color(0xff02FD2A),
                      ),
                ),
                if (easy) ...[
                  Text(
                    "Your score is $easyscore",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                  ),
                ],
                if (medium) ...[
                  Text(
                    "Your score is $mediumscore",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                  ),
                ],
                if (hard) ...[
                  Text(
                    "Your score is $hardscore",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                  ),
                ],
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      easyscore = 0;
                      hardscore = 0;
                      mediumscore = 0;
                      hard = false;
                      easy = false;
                      medium = false;
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text("Play Again"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
