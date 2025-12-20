import 'package:flutter/material.dart';
import 'package:quiz_app/text_style.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

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
            Color.fromARGB(255, 123, 220, 255),
            Color.fromARGB(255, 69, 193, 255),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Column(
          // Pushes children to the Top, Middle, and Bottom
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1. TOP: Title
            const Padding(
              padding: EdgeInsets.only(top: 45),
              child: StyledText("Quiz App", 31.5),
            ),

            // 2. MIDDLE: Image and Button Group
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 250, // Smaller height to ensure it fits on all screens
                  width: 250,
                ),
                const SizedBox(height: 39),
                const StyledText("Learn flutter the fun way !", 20),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {}, // Changed from null to enable the button
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 236, 219, 39),
                    foregroundColor: const Color.fromARGB(255, 16, 0, 0),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  ),
                  child: const StyledText("Start Quiz", 30),
                ),
              ],
            ),

            // 3. BOTTOM: Invisible Anchor
            // We use a smaller SizedBox here (e.g., 50 instead of 500)
            // to act as the "bottom" child for the spaceBetween logic.
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}