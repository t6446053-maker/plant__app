import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_app_bar.dart';

class PlantingGuideScreen extends StatelessWidget {
  const PlantingGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: ListView(
          children: [
            _buildPlantItem(context),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CoustomAppBar(
      title: "PLANTING GUIDE",
      leadng: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: InkWell(
          onTap: () {
            Navigator.popAndPushNamed(context, AppRoutes.user);
          },
          child: SvgPicture.asset(AppIcons.arrowBackIcon),
        ),
      ),
      leadingWidth: 37,
      backGroundColoe: AppColors.White,
      tallBarHighet: null,
    );
  }

  Widget _buildPlantItem(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.blackPanes);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.White,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            _buildImage(),
            const SizedBox(width: 15),
            Expanded(child: _buildText()),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        AppImages.plantEight,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Black Panse",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "Planting Guide",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}