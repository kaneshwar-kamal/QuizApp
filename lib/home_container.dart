import 'package:flutter/material.dart';
import 'package:quiz_app/text_style.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key}); // Added key and standard naming

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 137, 223, 255),
            Color.fromARGB(255, 82, 197, 255),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center items as a group
          children: [
            // 1. Title at top
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              child: StyledText("Quiz App", 30.5),
            ),

            // 2. Logo - reduced height to prevent overflow
            Image.asset(
              'assets/images/logo.png',
              height: 300, // Reduced from 600
              width: 300,
              // Tip: You can also use color: Colors.white.withOpacity(0.5) 
              // to make it semi-transparent if you like.
            ),

            const SizedBox(height: 40), // Gap after image

            // 3. Subtitle
            const StyledText("Learn flutter the fun way!", 20),

            const SizedBox(height: 30), // Gap before button

            // 4. Action Button
            ElevatedButton(
              onPressed: () {
                // To-do: Add navigation logic here
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 236, 219, 39),
                foregroundColor: const Color.fromARGB(255, 16, 0, 0),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const StyledText("Start Quiz", 20),
            ),
          ],
        ),
      ),
    );
  }
}