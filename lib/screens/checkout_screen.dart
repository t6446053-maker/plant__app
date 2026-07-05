import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/CheckOutFeld.dart';
import 'package:plt/widgets/coustom_app_bar.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class CheckoutScreen extends StatefulWidget {

  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  void _showConfirmSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return Container(
          height: 300.h,
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Confirm Checkout?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 50.h),
              CoustomBottomLogin(
                text: "YES",
                buttonColor: AppColors.PrimaryGreen,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.notificationCheck);
                },
                minimSize: Size(380.w, 70.h),
                textColor: AppColors.White,
                textSize: 20,
                redus: 5,
              ),
              SizedBox(height: 20.h),
              CustomBottomNotNow(
                text: "Cancel",
                textColor: AppColors.Black,
                textSize: 20,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSectionTitle(String text) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.Black,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: CoustomAppBar(
        title: "CHECKOUT",
        backGroundColoe: AppColors.White,
        tallBarHighet: null,
        leadingWidth: 37.w,
        leadng: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, AppRoutes.cart);
            },
            child: SvgPicture.asset(AppIcons.arrowBackIcon),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              _buildSectionTitle("Personal Information"),
              SizedBox(height: 3.h),
              const Divider(color: Colors.black12, thickness: 1),
              TextFeldCheckOut(hintText: "Trần Minh Trí"),
              TextFeldCheckOut(hintText: "tmtri310251@gmail.com"),
              TextFeldCheckOut(hintText: "Address"),
              TextFeldCheckOut(hintText: "Phone Number"),
              SizedBox(height: 20.h),
              _buildSectionTitle("Delivery Method"),
              SizedBox(height: 3.h),
              const Divider(color: Colors.black12, thickness: 1),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick Shipping - \$15",
                        style: TextStyle(
                          color: AppColors.PrimaryGreen,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Expected Shipping Date: May 5th",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.check,
                      color: AppColors.PrimaryGreen, size: 18),
                ],
              ),
              SizedBox(height: 8.h),
              const Divider(color: Colors.black12, thickness: 1),
              SizedBox(height: 8.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "COD - \$20",
                    style: TextStyle(
                      color: AppColors.Black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Expected Shipping Date: May 13th",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              _buildSectionTitle("Payment Method"),
              SizedBox(height: 3.h),
              const Divider(color: Colors.black12, thickness: 1),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "VISA / MASTERCARD",
                    style: TextStyle(
                      color: AppColors.PrimaryGreen,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(Icons.check,
                      color: AppColors.PrimaryGreen, size: 18),
                ],
              ),
              SizedBox(height: 5.h),
              const Divider(color: Colors.black12, thickness: 1),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    "\$500",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Fee",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    "\$15",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    "\$515",
                    style: TextStyle(
                      color: AppColors.PrimaryGreen,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PrimaryGreen,
                  minimumSize: Size(double.infinity, 60.h),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: _showConfirmSheet,
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(
                    color: AppColors.White,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
