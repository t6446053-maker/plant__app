import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/screens/home_screen.dart';
import 'package:plt/screens/notification_screen.dart';
import 'package:plt/screens/profile_screen.dart';
import 'package:plt/screens/search_screen.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int indexx = 0;

  final List<Widget> screnss = [
    HomeScren(),
    SearchScreen(),
    NotfactionScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screnss[indexx],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return  BottomNavigationBar(
        currentIndex: indexx,
        onTap: (value) {
          setState(() {
            indexx = value;
          });
        },

        type: BottomNavigationBarType.fixed, 
        backgroundColor: AppColors.White,
        

       

        items: [
          _item(AppIcons.homeIcon),
          _item(AppIcons.searchIcon),
          _item(AppIcons.notificationIcon),
          _item(AppIcons.userIcon),
        
        ]
    );
   
  }

  BottomNavigationBarItem _item(String icon) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        width: 28,
        height: 28,
        color: AppColors.Black,
      ),
      label: "",
    );
  }
}