import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizap/constants.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: lightBlueColor,
        backgroundColor: darkBlueColor,
        title: const Text(
          "Level up",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Easy",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/easy');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: defualtPadding),
                          padding: const EdgeInsets.symmetric(
                              horizontal: defualtPadding,
                              vertical: defualtPadding / 2),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: darkBlueColor.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: boxBOrderColor,
                              )),
                          child: Text(
                            "Start quiz",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text(
                        "Medium",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/medium');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: defualtPadding),
                          padding: const EdgeInsets.symmetric(
                              horizontal: defualtPadding,
                              vertical: defualtPadding / 2),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: darkBlueColor.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: boxBOrderColor,
                              )),
                          child: Text(
                            "Start quiz",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text(
                        "Hard",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/hard');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: defualtPadding),
                          padding: const EdgeInsets.symmetric(
                              horizontal: defualtPadding,
                              vertical: defualtPadding / 2),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: darkBlueColor.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: boxBOrderColor,
                              )),
                          child: Text(
                            "Start quiz",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
