import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_app_bar.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: _buildAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          _dateTitle("Wednesday, April 1st"),
          const SizedBox(height: 10),
          _orderItem(
            context,
            status: "Order Successful",
            statusColor: AppColors.PrimaryGreen,
            items: "2 items",
          ),

          const SizedBox(height: 20),

          _dateTitle("Wednesday, March 31st"),
          const SizedBox(height: 10),
          _orderItem(
            context,
            status: "Order Canceled",
            statusColor: AppColors.red,
            items: "3 items",
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CoustomAppBar(
      title: "TRANSACTION HISTORY",
      backGroundColoe: AppColors.White,
      tallBarHighet: null,
      leadingWidth: 37,
      leadng: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: InkWell(
          onTap: () {
            Navigator.popAndPushNamed(context, AppRoutes.user);
          },
          child: SvgPicture.asset(AppIcons.arrowBackIcon),
        ),
      ),
    );
  }

  Widget _dateTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _orderItem(
    BuildContext context, {
    required String status,
    required Color statusColor,
    required String items,
  }) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.checkTransactionHistory);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                AppImages.plantEight,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    status,
                    style: TextStyle(
                      fontSize: 18,
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Spider Plant | Indoor",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    items,
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
