import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final colour;
  final textColour;
  final String buttonText;
  final buttonTapped;
  const MyButton({
    super.key,
    required this.colour,
    required this.textColour,
    required this.buttonText,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: Container(
            color: colour,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColour,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
