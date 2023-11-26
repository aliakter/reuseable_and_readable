import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/color.dart';

class CustomAppBar extends StatelessWidget {
  final IconButton? icon;
  final VoidCallback? onPress;
  final PreferredSizeWidget? bottomWidget;
  final String title;

  const CustomAppBar({
    super.key,
    this.icon,
    this.onPress,
    this.bottomWidget,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.blue12Color,
      title: Center(
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 20.sp,
          ),
        ),
      ),
      bottom: bottomWidget,
    );
  }
}
