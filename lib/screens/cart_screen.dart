import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class CartScreen extends StatefulWidget {
  final int initialQuantity;

  const CartScreen({
    super.key,
    required this.initialQuantity,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late int itemCount;
  bool checkStory = false;
  bool itemSelected = false;

  @override
  void initState() {
    super.initState();
    itemCount = widget.initialQuantity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: AppBar(
        backgroundColor: AppColors.White,
        centerTitle: true,
        leadingWidth: 40.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context); 
            },
            icon: SvgPicture.asset(
              AppIcons.arrowBackIcon,
              width: 10.w,
              color: AppColors.Black,
            ),
          ),
        ),
        title: Text(
          "CART",
          style: TextStyle(
            color: AppColors.Black,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp, 
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.deleteIcon,
                width: 22.w,
                color: AppColors.Black,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 10.h),
        itemCount: 1,
        itemBuilder: (context, index) {
          return _buildCartItem();
        },
      ),
      bottomNavigationBar: itemSelected ? _buildBottomBar() : null,
    );
  }

  Widget _buildBottomBar() {
    return Container(
      height: 150.h,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.White,
      
 
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                ),
              ),
              Text(
                "\$500",
                style: TextStyle(
                  color: AppColors.Black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.PrimaryGreen,
              minimumSize: Size(double.infinity.w, 55.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              elevation: 0,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.checkout);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Proceed to Checkout",
                  style: TextStyle(
                    color: AppColors.White,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.arrowforward,
                  width: 10.w,
                  color: AppColors.White,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      color: AppColors.White, 
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 24.w,
            height: 24.h,
            child: Checkbox(
              
              value: checkStory,
              activeColor: AppColors.Black,
              checkColor: AppColors.White,
              side:  BorderSide(color: Colors.grey, width: 2.w),
              
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
              onChanged: (value) {
                setState(() {
                  checkStory = value!;
                  itemSelected = value;
                });
              },
            ),
          ),
          SizedBox(width: 12.w),
          
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                AppImages.plantSeven,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 14.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 14.sp, fontFamily: 'Roboto'),
                    children: [
                      TextSpan(
                        text: "Spider Plant ",
                        style: TextStyle(color: AppColors.Black, fontWeight: FontWeight.bold , fontSize: 20.sp),
                      ),
                       TextSpan(
                        text: "| ",
                        style: TextStyle(color: Colors.black , fontSize: 20.sp),
                      ),
                      TextSpan(
                        text: "Indoor",
                        style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.normal , fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                
                Text(
                  "\$250",
                  style: TextStyle(
                    color: AppColors.PrimaryGreen,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.h),

                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.Black, width: 1.2.w),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Icon(Icons.remove, size: 15.w, color: AppColors.Black),
                      ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: AppColors.Black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    InkWell(
                     
                 
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.Black, width: 1.2.w),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Icon(Icons.add, size: 15.w, color: AppColors.Black),
                      ),
                    ),
                    
                    SizedBox(width: 20.w),

                    GestureDetector(
                      onTap: () {
                        _showDeleteBottomSheet();
                      },
                      child: Text(
                        "Remove",
                        style: TextStyle(
                          color: AppColors.Black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      backgroundColor: AppColors.White,
      builder: (context) {
        return Container(
          height: 220.h,
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Delete item?",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.Black,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                "This action cannot be undone",
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 20.h),
              CoustomBottomLogin(
                text: "YES",
                buttonColor: AppColors.PrimaryGreen,
                onPressed: () {
                  Navigator.pop(context);
                },
                minimSize: Size(double.infinity, 50.h),
                textColor: AppColors.White,
                textSize: 16.sp,
                redus: 8.r,
              ),
              SizedBox(height: 5.h),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: AppColors.grey, fontSize: 14.sp),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}