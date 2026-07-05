import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_app_bar.dart';
import 'package:plt/widgets/coustom_bottom_login.dart';

class CheckTransactionHistoryScreen extends StatelessWidget {
  const CheckTransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,

      appBar: CoustomAppBar(
        title: "TRANSACTION HISTORY",
        backGroundColoe: AppColors.White,
        leadingWidth: 37,
        tallBarHighet: null,
        leadng: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(
                context,
                AppRoutes.transactionHistory,
              );
            },
            child: SvgPicture.asset(AppIcons.arrowBackIcon),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
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

              _sectionTitle("Personal Information"),
              _divider(),

              _infoText("Trần Minh Trí"),
              _infoText("tmtri310251@gmail.com"),
              _infoText("60 Láng Hạ, Ba Đình, Hà Nội"),
              _infoText("0123456789"),

              const SizedBox(height: 35),

              _sectionTitle("Delivery Method"),
              _divider(),

              _infoText("Quick Shipping - \$15"),
              _infoText("Expected Shipping Date: May 5th"),

              const SizedBox(height: 35),

              _sectionTitle("Payment Method"),
              _divider(),

              _infoText("VISA/MASTERCARD"),

              const SizedBox(height: 35),

              _sectionTitle("Your Item"),
              _divider(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: _buildBottomBar(context),
    );
  }


  Widget _buildBottomBar(BuildContext context) {
    return Container(
      color: AppColors.White,
      padding: const EdgeInsets.fromLTRB(35, 10, 35, 20),
      child: SafeArea(
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
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.blackPanesGuides,
                );
              },
              child: const Text(
                "CHECK OUT PLANTING GUIDE",
                style: TextStyle(
                  color: AppColors.White,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),

            const SizedBox(height: 10),

            CustomBottomNotNow(
              text: "Back to Homepage",
              textColor: AppColors.Black,
              textSize: 20,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }


  Widget _sectionTitle(String text) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.Black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _divider() {
    return const Divider(
      indent: 3,
      endIndent: 3,
      color: AppColors.grey,
    );
  }

  Widget _infoText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
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
