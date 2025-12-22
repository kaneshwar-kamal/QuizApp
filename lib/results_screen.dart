import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen ({super.key});
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Answer x questions"),
              SizedBox(height: 30),
              Text('answers'),
              SizedBox(height: 20,),
              TextButton(
                onPressed: (){},
                child: Text('Button'),
              )
            ],
        ),
      ),
    );
  }
}