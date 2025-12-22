import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  // List <Map<String,Object>> getSummaryData (){
  //     final List <Map<String,Object>> summary = [];

  //     for(var i=0; i<chosenAnswers.length;i++){
  //         summary.add({
  //           'question_index': i,
  //           'question': questions[i].text,
  //           'correct_answer': questions[0].answers,
  //           'user_answer': chosenAnswers[i]
  //         });
  //     }
  //     return summary;
  //   }

  @override
Widget build(context) {
  return SizedBox(
    height: 530,
    child: SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
          return Row(
            // Aligns the number to the top of the text block
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(color: Colors.black, fontSize: 15),
              ),
              const SizedBox(width: 20), // Adds space between number and text
              Expanded(
                child: Column(
                  // THIS IS THE KEY: Aligns all text inside the Column to the left
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Text(
                      data['question'].toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['user_answer'].toString(),
                      style: const TextStyle(color: Color.fromARGB(255, 2, 31, 83), fontSize: 15),
                    ),
                    Text(
                      data['correct_answer'].toString(),
                      style: const TextStyle(color: Color.fromARGB(255, 47, 81, 24), fontSize: 15),
                    ),
                    const SizedBox(height: 15), // Gap between different questions
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    ),
  );
}
}
