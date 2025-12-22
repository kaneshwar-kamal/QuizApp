import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customAnswerButton extends StatelessWidget {
  const customAnswerButton(this.message,this.onTap ,{super.key});

  final String message;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 236, 219, 39),
        foregroundColor: const Color.fromARGB(255, 16, 0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      ),
      child:Text(message, textAlign: TextAlign.center,style: GoogleFonts.getFont('Lato')),
    );
  }
}