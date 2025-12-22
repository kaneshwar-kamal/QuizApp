import 'package:flutter/material.dart';
import 'package:quiz_app/Questions.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  Widget? activeScreen; 
  List<String> selectedAnswers = [];


  //IF WE DONT WANT TO USE THIS INIT METHOD AND ALL WE CAN JUSRT USE THIS
  //THERNARY EXPRESSION LIKE IF ELSE TO SET STATE.
  // TO USE UNCOMMENT LINE 19,29,51,52,53 AND COMMENT 30,21,22,23,24,25,50
  //var activeScreen = 'start-screen'; 

  @override
  void initState() {
    super.initState(); 
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      // activeScreen = 'question-screen';
      activeScreen = QuestionsScreen (onSelectedAnswer : chooseAnswer);
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers = [];
        activeScreen = ResultsScreen();
      });
    }
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
          // child : activeScreen == 'start-screen'  
          //   ? StartScreen(switchScreen)
          //   : const QuestionsScreen(),
        ),
      ),
    );
  }
}
