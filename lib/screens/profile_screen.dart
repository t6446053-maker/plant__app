import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/CheckOutFeld.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,

      appBar: AppBar(
        backgroundColor: AppColors.White,
        centerTitle: true,
        elevation: 0,
        leading: const SizedBox(),
        title: Text(
          "PROFILE",
          style: TextStyle(
            color: AppColors.Black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 40.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 30.h),

              _buildProfileHeader(),

               SizedBox(height: 40.h),

              const TextFeldCheckOut(hintText: 'Email'),

               SizedBox(height: 20.h),

              _buildMenuItem(
                context,
                "Edit Information",
                AppRoutes.editInformation,
              ),

              _buildMenuItem(
                context,
                "Planting Guide",
                AppRoutes.plantingGuide,
              ),

              _buildMenuItem(
                context,
                "Transaction History",
                AppRoutes.transactionHistory,
              ),

              _buildMenuItem(
                context,
                "Q & A",
                AppRoutes.faqs,
              ),

               SizedBox(height: 10.h),

               TextFeldCheckOut(hintText: 'Security'),

               SizedBox(height: 20.h),

              _buildMenuText("Terms and Policy"),
              _buildMenuText("Security Policy"),

               SizedBox(height: 20.h),

              _buildLogout(context),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Profile header
  Widget _buildProfileHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: AppColors.Black,
          child: const Icon(Icons.person, color: Colors.white),
        ),
         SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trần Minh Trí",
              style: TextStyle(
                color: AppColors.Black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "tranminhtri@gmail.com",
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // 🔹 Navigation item
  Widget _buildMenuItem(BuildContext context, String text, String route) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.Black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // 🔹 Simple text item
  Widget _buildMenuText(String text) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 15.h),
      child: Text(
                 "Terms and Policy",

        style: TextStyle(
          color: AppColors.Black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildLogout(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.login,
          (ro) => false,
        );
      },
      child: Text(
        "Logout",
        style: TextStyle(
          color: AppColors.red,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}