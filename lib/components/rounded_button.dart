import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  // Corrected constructor definition with required keyword and proper initialization
  RoundedButton({
    required this.color,
    required this.title,
    required this.onPressed,
  });

  final Color color;
  final String title;
  final VoidCallback
      onPressed; // Use VoidCallback for a function without parameters

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed, // Function called when button is pressed
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Color(0xFFDFE2EA)),
          ),
        ),
      ),
    );
  }
}
