import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plt/core/colors.dart';

class TextAndTextFeldLoginPage extends StatefulWidget {
  const TextAndTextFeldLoginPage({super.key});

  @override
  State<TextAndTextFeldLoginPage> createState() =>
      _TextAndTextFeldLoginPageState();
}

class _TextAndTextFeldLoginPageState extends State<TextAndTextFeldLoginPage> {
  final TextEditingController controller = TextEditingController();

  @override 
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      width: 350.w,
      child: TextFormField(
       
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r)),
          hintText: "Email",
          hintStyle: TextStyle(color: AppColors.grey),
        ),
      ),
    );
  }
}
