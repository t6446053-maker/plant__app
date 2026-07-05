import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/screens/cart_screen.dart';
import 'package:plt/widgets/coustom_app_bar.dart';

class SpiderPlant extends StatefulWidget {
  const SpiderPlant({super.key});

  @override
  State<SpiderPlant> createState() => _SpiderPlantState();
}

class _SpiderPlantState extends State<SpiderPlant> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildPreview(),
            _buildTags(),
            _buildDetails(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CoustomAppBar(
      title: "Spider Plant",
      backGroundColoe: AppColors.White,
      tallBarHighet: null,
      leadingWidth: 32,
      leadng: IconButton(
        icon: SvgPicture.asset(AppIcons.arrowBackIcon, width: 25),
        onPressed: () {
          Navigator.popAndPushNamed(context, AppRoutes.navBar);
        },
      ),
      action: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(AppIcons.shoppingCartIcon),
        ),
      ],
    );
  }

  Widget _buildPreview() {
    return Container(
      height: 300,
      width: double.infinity,
      color: AppColors.GreyN2,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImages.plantFour,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTags() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          _tag("Plants"),
          const SizedBox(width: 15),
          _tag("Indoor"),
        ],
      ),
    );
  }

  Widget _tag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.PrimaryGreen,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.White,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\$250",
            style: TextStyle(
              color: AppColors.PrimaryGreen,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          const Text("Details", style: TextStyle(fontSize: 18)),
          Divider(color: AppColors.grey),

          _detail("Mass", "1kg"),
          _detail("Origin", "Africa"),
          _detail("Status", "156 items left"),
        ],
      ),
    );
  }

  Widget _detail(String title, String value) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(
                value,
                style: TextStyle(
                  color: title == "Status"
                      ? AppColors.PrimaryGreen
                      : AppColors.Black,
                ),
              ),
            ],
          ),
        ),
        Divider(color: AppColors.grey),
      ],
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text("Quantity: 2"),
              const Spacer(),
              Text("Total: \$${2 * 250}"),
            ],
          ),
          const SizedBox(height: 15),

          Row(
            children: [
              IconButton(
                onPressed: () {
                 
                },
                icon: const Icon(Icons.remove),
              ),
              Text(
                "2",
                style: const TextStyle(fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  setState(() => 2);
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),

          const SizedBox(height: 15),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
             shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5), 
    ),
              minimumSize: const Size(double.infinity, 60),
              backgroundColor: AppColors.PrimaryGreen,
            ),
            onPressed:  () {
               Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CartScreen(initialQuantity: 2),
                      ),
                    );
            },
                   
                
             
            child: const Text(
              "ADD TO CART",
              style: TextStyle(
                color: AppColors.White,
                fontSize: 18),
              
            ),
          ),
        ],
      ),
    );
  }
}