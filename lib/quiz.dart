import 'package:flutter/material.dart';
import 'package:quiz_app/Questions.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  Widget? activeScreen; 

  @override
  void initState() {
    super.initState(); // Repair: Required for the framework to initialize properly
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) { // Repair: Changed 'Context' (class) to 'context' (variable)
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 123, 220, 255),
                Color.fromARGB(255, 69, 193, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen, // This will now correctly swap widgets
        ),
      ),
    );
  }
}
