import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.message, this.fontsize, {super.key});
  
  final String message;
  final double fontsize;

  @override
  Widget build(BuildContext context) { // Changed Context to context
    return Text(
      message,
      style: GoogleFonts.lato(
        color: Colors.black,
        fontSize: fontsize,
        //fontWeight: FontWeight.bold, // Optional: add weight if needed
      ),
    );
  }
}