import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/text_style.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({required this.onSelectedAnswer, super.key}) ;

  final void Function(String answer) onSelectedAnswer ;

  @override
  State <QuestionsScreen> createState()=> _Questions ();
}

class _Questions extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQUestion(String selectAnswer){
    widget.onSelectedAnswer(selectAnswer);
    setState((){
          currentQuestionIndex++;
    });
  }

  @override
  Widget build( context) { // Repair: Changed 'Context' to 'context' 

    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox( //we can also use Center if so delete 14 and uncomment 16 and comment 17
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 9, 55),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              
            ),
              //StyledText(currentQuestion.text,20.5),
              const SizedBox(height: 20),
              ...currentQuestion.getShuffledAnswers().map((answer){
                return 
                customAnswerButton(answer, (){
                  answerQUestion(answer);
                });
              }),
              // since we map the all question's answer via a list using spread ... operator
              // we font need need to manually add these buttons
              // customAnswerButton(currentQuestion.answers[0],(){}),
              // customAnswerButton(currentQuestion.answers[1],(){}),
              // customAnswerButton(currentQuestion.answers[2],(){}),
              // customAnswerButton(currentQuestion.answers[3],(){}),
          ],
        ),
      ),
    ) ;
  }
}