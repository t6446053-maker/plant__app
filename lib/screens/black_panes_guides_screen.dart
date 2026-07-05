import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_app_bar.dart';

class BlackPanesGuidesScreen extends StatelessWidget {
  const BlackPanesGuidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: CoustomAppBar(
        title: 'PLANTING GUIDES',
        leadingWidth: 37.w,
        backGroundColoe: AppColors.White,
        tallBarHighet: null,
        leadng: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(
                context,
                AppRoutes.checkTransactionHistory,
              );
            },
            child: SvgPicture.asset(
              AppIcons.arrowBackIcon,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              left: 50.w,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.blackPanes,
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      AppImages.plantThree,
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 30.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Black Panse',
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.Black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Planting Guide',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}