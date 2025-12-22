import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/text_style.dart';
import 'package:quiz_app/data/questions.dart';
// lib/Questions.dart
class QuestionsScreen extends StatefulWidget {
  // Fix: The named parameter must be final and stored in the class
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsState();
}

class _QuestionsState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    // This calls the 'chooseAnswer' method in your quiz.dart
    widget.onSelectedAnswer(selectedAnswer); 
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    // Repair: Use the dynamic index so the question changes!
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentQuestion.text, 24),
            const SizedBox(height: 30),
            // Fix: Use the Spread Operator and Map to create buttons dynamically
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return customAnswerButton(answer, () {
                answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}