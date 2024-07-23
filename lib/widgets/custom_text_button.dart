import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useable_and_readable/app/config/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CustomTextButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
