import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/CheckOutFeld.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              width: 500.w,
              height: 450.h,
              color: AppColors.Black,
              child: Image.asset(
                AppImages.loginPlantImage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.h),
            Image.asset(
              AppImages.component45,
              width: 160.w,
            ),
            SizedBox(height: 30.h),
            const TextFeldCheckOut(
              hintText: 'Email',
            ),
            SizedBox(height: 20.h),
            _loginButton(),
            SizedBox(height: 15.h),
            _notNowButton(context),
          ],
        ),
      ),
    );
  }

  CoustomBottomLogin _loginButton() {
    return CoustomBottomLogin(
      redus: 10,
      text: 'Login / Register',
      buttonColor: AppColors.grey,
      onPressed: () {},
      minimSize: const Size(340, 70),
      textColor: AppColors.White,
      textSize: 18,
    );
  }

  CustomBottomNotNow _notNowButton(BuildContext context) {
    return CustomBottomNotNow(
      text: 'Not now',
      textColor: AppColors.Black,
      textSize: 19,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.register);
      },
    );
  }
}