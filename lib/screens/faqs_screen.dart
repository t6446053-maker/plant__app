import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_app_bar.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});

  Widget buildTile(String title, String content, BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(size: 30.r),
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(12.r),
            child: Text(
              content,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: CoustomAppBar(
        title: "FAQS",
        leadng: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, AppRoutes.user);
            },
            child: SvgPicture.asset(AppIcons.arrowBackIcon),
          ),
        ),
        backGroundColoe: AppColors.White,
        tallBarHighet: null,
        leadingWidth: 37.w,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              buildTile(
                "How long will it take for my order to arrive?",
                "Orders placed via Standard shipping will be processed within 2-8 business days...",
                context,
              ),
              buildTile(
                "Where do you ship?",
                "We ship worldwide depending on product availability...",
                context,
              ),
              buildTile(
                "If I order more than one plant, will they ship separately?",
                "Orders are usually shipped together unless stated otherwise...",
                context,
              ),
              buildTile(
                "How do I order several plants to different addresses?",
                "You can place separate orders for each address...",
                context,
              ),
              buildTile(
                "Các sản phẩm Planta có phải là hữu cơ không?",
                "Yes, most of our products are organically sourced...",
                context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}