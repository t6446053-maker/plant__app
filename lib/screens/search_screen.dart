import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/widgets/CheckOutFeld.dart';
import 'package:plt/widgets/coustom_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(title: "Search", leadng: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: SvgPicture.asset(AppIcons.arrowBackIcon),
      ), backGroundColoe: AppColors.White, tallBarHighet: null, leadingWidth: 37),
      backgroundColor: AppColors.White,

      body: Center(
        child: Column(
          children: [
            TextFeldCheckOut(hintText: "Search" , )
          ],
        ),
      ),
    );
  }
}
