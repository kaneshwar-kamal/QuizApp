import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/text_style.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key}) ;

  @override
  State <QuestionsScreen> createState()=> _Questions ();
}

class _Questions extends State<QuestionsScreen> {
  @override
  Widget build( context) { // Repair: Changed 'Context' to 'context'

    final currentQuestion= questions[0];

    return SizedBox( //we can also use Center if so delete 14 and uncomment 16 and comment 17
      width: double.infinity,
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            StyledText(currentQuestion.text,20.5),
            const SizedBox(height: 20),
            customAnswerButton(currentQuestion.answers[0],(){}),
            customAnswerButton(currentQuestion.answers[1],(){}),
            customAnswerButton(currentQuestion.answers[2],(){}),
            customAnswerButton(currentQuestion.answers[3],(){}),
        ],
      ),
    ) ;
  }
}