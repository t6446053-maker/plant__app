import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/widgets/coustom_app_bar.dart';
import 'package:plt/widgets/coustom_gride_view.dart';

class EquipmentsScreen extends StatelessWidget {
  const EquipmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        "name": "Planta Lemon Balm",
        "image": AppImages.cupOne,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "Planta Lemon Balm",
        "image": AppImages.cupOne,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "Planta Rosewood",
        "image": AppImages.cupThree,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "Planta Dove Grey",
        "image": AppImages.cupSix,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "Planta Den",
        "image": AppImages.cupFour,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "Planta Matte Black",
        "image": AppImages.cupFive,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "Small Sierra",
        "image": AppImages.mediumSprayer,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "Small Sierra",
        "image": AppImages.smallSprayer,
        "type": "Outdoor",
        "price": r"$250",
      },
      {
        "name": "CB2 SAIC",
        "image": AppImages.largeBottle,
        "type": "Indoor",
        "price": r"$250",
      },
      {
        "name": "Xiaoda",
        "image": AppImages.shovel,
        "type": "Indoor",
        "price": r"$250",
      },
      {
        "name": "Shovels",
        "image": AppImages.shovel,
        "type": "Indoor",
        "price": r"$250",
      },
      {
        "name": "Finn Terrazzo",
        "image": AppImages.fanShovel,
        "type": "Indoor",
        "price": r"$250",
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: CoustomAppBar(
        title: "EQUIPMENTS",
        backGroundColoe: AppColors.White,
        tallBarHighet: null,
        leadingWidth: 40.w,
        leadng: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.navBar);
          },
          icon: SvgPicture.asset(
            AppIcons.arrowBackIcon,
            width: 25.w,
          ),
        ),
        action: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: SvgPicture.asset(AppIcons.shoppingCartIcon),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Expanded(
              child: CoustomGrideView(itemData: items),
            ),
          ],
        ),
      ),
    );
  }
}