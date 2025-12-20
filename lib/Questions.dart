import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key}) ;

  @override
  State <QuestionsScreen> createState()=> _Questions ();
}

class _Questions extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) { // Repair: Changed 'Context' to 'context'
    return const Center(
      child: Text(
        "Questions screen",
        style: TextStyle(
          color: Colors.white, 
          fontSize: 24,
        ),
      ),
    );
  }
}