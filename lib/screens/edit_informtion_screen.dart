import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/CheckOutFeld.dart';
import 'package:plt/widgets/coustom_app_bar.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class EditInformtionScreen extends StatelessWidget {
  const EditInformtionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: CoustomAppBar(
        title: "Edit Information",
        backGroundColoe: AppColors.White,
        leadingWidth: 37.w,
        tallBarHighet: null,
        leadng: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, AppRoutes.user);
            },
            child: SvgPicture.asset(AppIcons.arrowBackIcon),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 30.h),
              _buildInfoText(),
              SizedBox(height: 40.h),
              _buildFields(),
              SizedBox(height: 40.h),
              _buildSaveButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoText() {
    return Text(
      "The information will be saved for the next purchase. Click on the details to edit.",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.Black,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildFields() {
    return Column(
      children: [
        TextFeldCheckOut(hintText: "Trần Minh Trí"),
        SizedBox(height: 10.h),
        TextFeldCheckOut(hintText: "tranminhtri@gmail.com"),
        SizedBox(height: 10.h),
        TextFeldCheckOut(hintText: "60 Láng Hạ, Ba Đình, Hà Nội"),
        SizedBox(height: 10.h),
        TextFeldCheckOut(hintText: "0123456789"),
      ],
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return CoustomBottomLogin(
      text: "Save",
      buttonColor: AppColors.PrimaryGreen,
      onPressed: () {},
      minimSize: Size(double.infinity, 60.h),
      textColor: AppColors.White,
      textSize: 20.sp,
      redus: 10.r,
    );
  }
}