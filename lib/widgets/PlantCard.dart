import 'package:flutter/material.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/routes/app_routes.dart';

class PlantCard extends StatelessWidget {
  final String name;
  final String image;
  final String door;
  final String price;

  const PlantCard({
    super.key,
    required this.name,
    required this.image,
    required this.door,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.spiderPlants);
            },

            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.GreyN2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),
          ),
        ),

        // 2. تفاصيل النبات (الاسم، القسم، السعر)
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              Text(door, style: TextStyle(fontSize: 15, color: AppColors.grey)),
              const SizedBox(height: 4),
              Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.PrimaryGreen,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
