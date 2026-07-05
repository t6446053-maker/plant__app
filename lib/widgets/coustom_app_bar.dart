import 'package:flutter/material.dart';
import 'package:plt/core/colors.dart';

class CoustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget leadng; // تغيير النوع إلى Widget لكي يستقبل Icon أو SvgPicture
  final List<Widget>? action;
  final Color backGroundColoe;
  final double? tallBarHighet;
  final double leadingWidth;

  const CoustomAppBar({
    super.key,
    required this.title,
    required this.leadng,
    this.action, // جعلناه اختيارياً (بدون required) لتوفير مرونة أكبر
    required this.backGroundColoe,
    required this.tallBarHighet,
    required this.leadingWidth,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.White,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
      ),
      leading: leadng,
      actions: action,
      backgroundColor: backGroundColoe,
      toolbarHeight: tallBarHighet,
      centerTitle: true,
      leadingWidth: leadingWidth,
    );
  }

  // تحديد الارتفاع ديناميكياً بناءً على القيمة الممررة، أو استخدام الارتفاع الافتراضي (56)
  @override
  Size get preferredSize => Size.fromHeight(tallBarHighet ?? 56.0);
}
