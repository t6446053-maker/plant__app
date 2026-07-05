
import 'package:flutter/material.dart';
import 'package:plt/core/colors.dart';

class TextFeldCheckOut extends StatelessWidget {
  final String hintText;
  
  const TextFeldCheckOut({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText, 
          hintStyle: TextStyle(color: AppColors.grey,
          fontSize: 17,
          fontWeight: FontWeight.w400
          
          
          
          
          ),
        ),
      
      ),
    );
  }
}