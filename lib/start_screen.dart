import 'package:flutter/material.dart';
import 'package:quiz_app/text_style.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build (Context){
    return 
    SafeArea(
        child: Column(
          // Pushes children to the Top, Middle, and Bottom
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1. TOP: Title
            const Padding(
              padding: EdgeInsets.only(top: 45),
              child: StyledText("Quiz App", 31.5,),
            ),

            // 2. MIDDLE: Image and Button Group
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 250, // Smaller height to ensure it fits on all screens
                  width: 250,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                const SizedBox(height: 39),
                Opacity(opacity: 0.5,
                  child : const StyledText("Learn flutter the fun way !", 20),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: startQuiz, // Button to chage the state (frame)
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 236, 219, 39),
                    foregroundColor: const Color.fromARGB(255, 16, 0, 0),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                  ),
                  label: const StyledText("Start Quiz", 20),
                  icon: const Icon(Icons.arrow_right_alt,size:40),
                ),
              ],
            ),

            // 3. BOTTOM: Invisible Anchor
            // We use a smaller SizedBox here (e.g., 50 instead of 500)
            // to act as the "bottom" child for the spaceBetween logic.
            const SizedBox(height: 40),
          ],
        ),
      );
  }
}
