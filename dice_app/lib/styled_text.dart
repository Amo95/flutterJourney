import 'package:flutter/material.dart';

double fontSize = 30;

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
        
    return Text(text, 
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
            ),
    );
  }
}