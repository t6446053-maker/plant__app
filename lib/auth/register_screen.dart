import 'package:flutter/material.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/CheckOutFeld.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 90),
            Image.asset(
              AppImages.component45,
              width: 160,
            ),
            const SizedBox(height: 30),
            const TextFeldCheckOut(
              hintText: 'Email',
            ),
            const SizedBox(height: 30),
            _loginButton(context),
            const SizedBox(height: 10),
            _notNowButton(),
          ],
        ),
      ),
    );
  }

  CoustomBottomLogin _loginButton(BuildContext context) {
    return CoustomBottomLogin(
      text: 'Login / Register',
      buttonColor: AppColors.Black,
      redus: 10,
      minimSize: const Size(335, 70),
      textColor: AppColors.White,
      textSize: 20,
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.navBar,
          (route) => false,
        );
      },
    );
  }

  CustomBottomNotNow _notNowButton() {
    return CustomBottomNotNow(
      text: 'Not now',
      textColor: AppColors.Black,
      textSize: 20,
      onPressed: () {},
    );
  }
}