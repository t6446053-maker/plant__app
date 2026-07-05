import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/widgets/coustom_app_bar.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class NotfictionCheckScreen extends StatelessWidget {
  const NotfictionCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(
        title: "NOTIFICATION",
        leadng: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(AppIcons.arrowBackIcon),
          ),
        ),
        backGroundColoe: AppColors.White,
        tallBarHighet: null,
        leadingWidth: 37,
      ),

      backgroundColor: AppColors.White,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Order Successful!",
                  style: TextStyle(
                    color: AppColors.PrimaryGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              const Center(
                child: Text(
                  "Personal Information",
                  style: TextStyle(
                    color: AppColors.Black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Divider(color: AppColors.grey),

              const SizedBox(height: 10),

              _infoText("Trần Minh Trí"),
              _infoText("tmtri310251@gmail.com"),
              _infoText("60 Láng Hạ, Ba Đình, Hà Nội"),
              _infoText("0123456789"),

              const SizedBox(height: 35),

              const Center(
                child: Text(
                  "Delivery Method",
                  style: TextStyle(
                    color: AppColors.Black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Divider(color: AppColors.grey),

              const SizedBox(height: 10),

              _infoText("Quick Shipping - \$15"),
              _infoText("Expected Shipping Date: May 5th"),

              const SizedBox(height: 35),

              const Center(
                child: Text(
                  "Payment Method",
                  style: TextStyle(
                    color: AppColors.Black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Divider(color: AppColors.grey),

              const SizedBox(height: 10),

              _infoText("VISA/MASTERCARD"),

              const SizedBox(height: 35),

              const Text(
                "Your Item",
                style: TextStyle(
                  color: AppColors.Black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Divider(color: AppColors.grey),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "You paid",
                    style: TextStyle(
                      color: AppColors.Black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\$515",
                    style: TextStyle(
                      color: AppColors.Black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PrimaryGreen,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text(
                  "Check out Planting Guide",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              CustomBottomNotNow(
                text: "Back to Homepage",
                textColor: AppColors.Black,
                textSize: 20,
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.grey,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}