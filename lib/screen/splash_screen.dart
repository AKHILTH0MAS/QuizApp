import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizap/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const SizedBox(),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff120084).withOpacity(0.5),
                ),
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Image.asset('assets/icons/quiz.png'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "Let's play!",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
              ),
              Text(
                "Play now & win",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xff02FD2A),
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/secondPage');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defualtPadding, vertical: defualtPadding / 2),
                  decoration: const BoxDecoration(
                    color: Color(0xff5200FF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text("Play Now",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: Colors.white,
                              )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
