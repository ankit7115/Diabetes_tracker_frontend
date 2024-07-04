import 'package:diabetes_tracker/homescreen.dart';
import 'package:diabetes_tracker/splash_screen/first_screen.dart';
import 'package:diabetes_tracker/splash_screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diabetes Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
      '/home': (context) => const HomeScreen(),
      },
      home: AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(101, 140, 187, 1),
      splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
      splash: SplashScreen(),
      nextScreen: SafeArea(child: Starter1()),
    ),
    );
  }
}

