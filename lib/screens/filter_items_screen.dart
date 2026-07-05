import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_gride_view.dart';

class FilterItemsScreen extends StatelessWidget {
  const FilterItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, AppRoutes.navBar);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
          centerTitle: true,
          title: Text(
            "PLANTS",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
          actions: [
            const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            SizedBox(width: 15.w),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.w),
                child: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelPadding: EdgeInsets.zero,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    color: AppColors.PrimaryGreen,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  tabs: [
                    Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 4.h,
                          ),
                          child: const Text("All"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 4.h,
                          ),
                          child: const Text("New"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 4.h,
                          ),
                          child: const Text("Outdoor"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 4.h,
                          ),
                          child: const Text("Indoor"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            left: 10.w,
            right: 10.w,
          ),
          child: const CoustomGrideView(
            itemData: [
              {
                "name": "Spider Plant",
                "image": AppImages.plantTwo,
                "type": "Outdoor",
                "price": r"$250",
              },
              {
                "name": "Spider Plant",
                "image": AppImages.plantTwo,
                "type": "Outdoor",
                "price": r"$250",
              },
              {
                "name": "Spider Plant",
                "image": AppImages.plantTwo,
                "type": "Outdoor",
                "price": r"$250",
              },
              {
                "name": "Spider Plant",
                "image": AppImages.plantTwo,
                "type": "Outdoor",
                "price": r"$250",
              },
              {
                "name": "Grey Star Calathea",
                "image": AppImages.plantFour,
                "type": "Outdoor",
                "price": r"$250",
              },
              {
                "name": "Banana Plant",
                "image": AppImages.plantFour,
                "type": "Outdoor",
                "price": r"$250",
              },
            ],
          ),
        ),
      ),
    );
  }
}