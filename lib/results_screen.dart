import 'package:flutter/material.dart';
import 'package:quiz_app/Questions.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/text_style.dart';


class ResultsScreen extends StatelessWidget{
  const ResultsScreen ({super.key, required this.chosenAnswers,required this.reStartQuiz });
  final List<String> chosenAnswers ;
  final Function() reStartQuiz;

  // lib/results_screen.dart
List<Map<String, Object>> getSummaryData() {
  final List<Map<String, Object>> summary = [];

  for (var i = 0; i < chosenAnswers.length; i++) {
    summary.add({
      'question_index': i,
      'question': questions[i].text,
      'correct_answer': questions[i].answers[0], 
      'user_answer': chosenAnswers[i]
    });
  }
  return summary;
}


  Widget build(context){

    final summaryData = getSummaryData();
    final numTotal = questions.length;
    final numCorrect = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Text('Final Score $numCorrect/$numTotal '),
              StyledText('Final Score $numCorrect/$numTotal ',30),
              SizedBox(height: 30),
              QuestionsSummary(summaryData: getSummaryData()),
              
              SizedBox(height: 20,),
              TextButton(
                onPressed: (){
                  reStartQuiz();
                },
                child:ElevatedButton.icon(
                  onPressed: reStartQuiz, // Button to chage the state (frame)
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 236, 219, 39),
                    foregroundColor: const Color.fromARGB(255, 16, 0, 0),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  ),
                  label: const StyledText("Restart Quiz", 20),
                  icon: const Icon(Icons.restart_alt_rounded,size:20),
                ),
              )
            ],
        ),
      ),
    );
  }
}