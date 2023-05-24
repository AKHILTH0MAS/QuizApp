import 'package:flutter/material.dart';
import 'package:quizap/screen/congrts.dart';
import 'package:quizap/screen/easy.dart';
import 'package:quizap/screen/hard.dart';
import 'package:quizap/screen/medium.dart';
import 'package:quizap/screen/second_page.dart';
import 'package:quizap/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(), // '/' is the default route
        '/secondPage': (context) => const SecondPage(),
        '/hard': (context) => const Hard(),
        '/congratspage': (context) => const CongrtsPage(),
        '/easy': (context) => const Easy(),
        '/medium': (context) => const Medium(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
    );
  }
}
