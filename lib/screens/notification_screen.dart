import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/widgets/coustom_app_bar.dart';

class NotfactionScreen extends StatelessWidget {
  const NotfactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "title": "Order Successful",
        "product": "Spider Plant",
        "type": "Indoor",
        "items": "2 items",
        "image": AppImages.plantFive,
        "time": "Wednesday, April 30th",
      },
      {
        "title": "Order Successful",
        "product": "Banana Plant",
        "type": "Outdoor",
        "items": "1 item",
        "image": AppImages.plantFour,
        "time": "Tuesday, April 29th",
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.White,

      appBar: CoustomAppBar(
        title: "NOTIFICATION",
        leadng: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              AppIcons.arrowBackIcon,
              width: 22,
              height: 22,
            ),
          ),
        ),
        leadingWidth: 32,
        backGroundColoe: AppColors.White,
        tallBarHighet: null,
      ),

      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: notifications.length,
        separatorBuilder: (context, index) =>
            Divider(color: AppColors.grey, height: 30),
        itemBuilder: (context, index) {
          final item = notifications[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item["time"]!,
                style: const TextStyle(
                  color: AppColors.Black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item["image"]!,
                      width: 85,
                      height: 85,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"]!,
                          style: const TextStyle(
                            color: AppColors.PrimaryGreen,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "${item["product"]} | ${item["type"]}",
                          style: const TextStyle(
                            color: AppColors.Black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          item["items"]!,
                          style: const TextStyle(
                            color: AppColors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}