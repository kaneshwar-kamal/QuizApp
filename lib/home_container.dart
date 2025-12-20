import 'package:flutter/material.dart';
import 'package:quiz_app/text_style.dart';



class homeContainer extends StatefulWidget{
  @override
  State<homeContainer> createState()=> _homeContainer();
}

class _homeContainer extends State<homeContainer>{
  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:[
            Color.fromARGB(255, 137, 223, 255),
            Color.fromARGB(255, 82, 197, 255),
          ],
          begin:Alignment.topLeft,
          end:Alignment.bottomRight,
        ),
      ),
      child: SizedBox.expand(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding : const EdgeInsets.only(top:20),
                child : StyledText("Quiz App",30.5),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 600,
                    width: 300,
                  ),
                  const SizedBox(height:20),
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 236, 219, 39),
                      foregroundColor: const Color.fromARGB(255, 16, 0, 0),
                    ),
                    child: const StyledText("Start Quiz",20)
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}