import 'package:flutter/material.dart';
import 'package:plt/core/colors.dart';

class CoustomBottomLogin extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final VoidCallback onPressed;
  final Size minimSize;
  final Color textColor;
  final double textSize;
  final double redus;

  const CoustomBottomLogin({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.onPressed,
    required this.minimSize,
    required this.textColor,
    required this.textSize,
    required this.redus,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: minimSize,
        backgroundColor: buttonColor,
        foregroundColor: textColor,
        textStyle: TextStyle(fontSize: textSize, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(redus),
        ),
      ),

      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class CustomBottomNotNow extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final VoidCallback onPressed;

  const CustomBottomNotNow({
    super.key,
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            text,

            style: TextStyle(
              fontSize: textSize,
              color: textColor,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.Black,

              decorationThickness: 1.8,
            ),
          ),
        ),
      ],
    );
  }
}
