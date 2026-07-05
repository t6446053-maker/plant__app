import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_app_bar.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class BlackPanesScreen extends StatelessWidget {
  const BlackPanesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: CoustomAppBar(
        title: 'Black Panse',
        backGroundColoe: AppColors.White,
        leadingWidth: 37.w,
        tallBarHighet: null,
        leadng: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, AppRoutes.plantingGuide);
            },
            child: SvgPicture.asset(AppIcons.arrowBackIcon),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderImage(),
            _buildCategoryButtons(),
            _buildInfoSections(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderImage() {
    return Container(
      width: double.infinity,
      height: 300.h,
      color: AppColors.GreyN2,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImages.plantOne,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 130.h,
            left: 20.w,
            right: 20.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCircleButton(AppIcons.arrowBackIcon),
                _buildCircleButton(AppIcons.arrowforward),
              ],
            ),
          ),
          Positioned(
            bottom: 15.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: true),
                SizedBox(width: 5.w),
                _buildDot(isActive: false),
                SizedBox(width: 5.w),
                _buildDot(isActive: false),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
  return Container(
    width: 8.w,
    height: 8.h,
    decoration: BoxDecoration(
      color: isActive ? Colors.black : Colors.grey.shade400,
      shape: BoxShape.circle,
    ),
  );
}

Widget _buildCategoryButtons() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
    child: Row(
      children: [
        _buildCategoryButton('Plant'),
        SizedBox(width: 10.w),
        _buildCategoryButton('Outdoor'),
      ],
    ),
  );
}

Widget _buildCategoryButton(String text) {
  return CoustomBottomLogin(
    text: text,
    buttonColor: AppColors.PrimaryGreen,
    onPressed: () {},
    minimSize: Size(60.w, 32.h),
    textColor: AppColors.White,
    textSize: 14.sp,
    redus: 5.r,
  );
}

Widget _buildCircleButton(String icon) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 5,
          spreadRadius: 1,
        )
      ],
    ),
    child: CircleAvatar(
      radius: 18.r,
      backgroundColor: AppColors.White,
      child: SvgPicture.asset(
        icon,
        width: 20.w,
        height: 20.h,
      ),
    ),
  );
}

Widget _buildInfoSections() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25.w),
    child: Column(
      children: [
        ExpansionTile(
          title: Text(
            "Basic Knowledge",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          tilePadding: EdgeInsets.zero,
          trailing: const Icon(Icons.add, color: Colors.black),
          shape: const Border(),
          collapsedShape: const Border(),
          children: const [
            Text("Basic plant maintenance, light, and soil info goes here."),
          ],
        ),
        const Divider(color: Colors.grey, height: 1),

        ExpansionTile(
          title: Text(
            "Stages",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          initiallyExpanded: true,
          tilePadding: EdgeInsets.zero,
          trailing: const Icon(Icons.remove, color: Colors.black),
          shape: const Border(),
          collapsedShape: const Border(),
          children: [
            _buildSubStepClose(title: "1. Watering Seeds (48h)"),
            _buildSubStepOpen(
              title: "2. Start Growing (3-5 days)",
              content:
                  "Water: Distilled water or rainwater can be used, avoid using hard water. Water regularly, keeping the soil moist but not soggy.",
            ),
            _buildSubStepClose(title: "3. Growing (2-3 weeks)"),
            _buildSubStepClose(title: "4. Maturing (4-6 weeks)"),
            _buildSubStepClose(title: "5. Blooming (4-6 weeks)"),
          ],
        ),
        const Divider(
          color: AppColors.PrimaryGreen,
          height: 2,
          thickness: 1.5,
        ),
      ],
    ),
  );
}

Widget _buildSubStepClose({required String title}) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 15.sp,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
    ),
    trailing: const Icon(Icons.keyboard_arrow_down, color: Colors.black54),
  );
}

Widget _buildSubStepOpen({
  required String title,
  required String content,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15.sp,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(Icons.keyboard_arrow_up, color: Colors.black54),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 10.h, left: 5.w, right: 5.w),
        child: Text(
          content,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black54,
            height: 1.5,
          ),
        ),
      ),
    ],
  );
}
}
