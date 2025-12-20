import 'dart:ffi';

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.message,this.fontsize,{super.key});
  final String message;
  final double fontsize;

  @override
  Widget build(Context){
    return Text(
        message,
        style: TextStyle(
          color:Colors.black,
          fontSize: fontsize,
        ),
    );
  }
}