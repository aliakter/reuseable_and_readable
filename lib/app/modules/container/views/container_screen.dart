import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:useable_and_readable/app/common_widget/custom_appbar.dart';
import 'package:useable_and_readable/app/config/color.dart';
import 'package:useable_and_readable/app/modules/container/controller/container_controller.dart';

class ContainerScreen extends GetView<ContainerController> {
  const ContainerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const CustomAppBar(
          title: 'Container',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80.h,
                    width: 80.w,
                    padding: const EdgeInsets.all(0.0),
                    color: Colors.cyanAccent,
                  ),
                  Container(
                    height: 80.h,
                    width: 80.w,
                    padding: const EdgeInsets.all(0.0),
                    color: Colors.blueAccent,
                  ),
                  Container(
                    height: 80.h,
                    width: 80.w,
                    padding: const EdgeInsets.all(0.0),
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 280.h,
                  width: 280.w,
                  margin: EdgeInsets.only(top: 20.h),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.orange,
                      width: 10.w,
                    ),
                  ),
                  child: Text(
                    'A',
                    style: TextStyle(
                      fontSize: 180.sp,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  height: 200.h,
                  width: 200.h,
                  decoration: const BoxDecoration(
                    color: Colors.purpleAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 160.h,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.25, 0.90],
                    colors: [
                      AppColors.red12Color,
                      AppColors.red13Color,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.bgColor,
                      offset: const Offset(-12, 12),
                      blurRadius: 8.r,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Challenge',
                  style: TextStyle(
                    fontSize: 45.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: Get.height / 3.h,
                width: Get.width.w,
                decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.redColor,
                    width: 2.0,
                  ),
                  gradient: const LinearGradient(colors: [
                    AppColors.goldColor,
                    AppColors.textColor,
                  ]),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.grayColor,
                      blurRadius: 2.0,
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 130.h,
                width: double.infinity.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.r),
                    bottomLeft: Radius.circular(50.r),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.blue12Color,
                      offset: Offset(9, 9),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Text(
                  'I am a container',
                  style: TextStyle(
                    fontSize: 38.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 90.h,
                width: double.infinity.w,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: AppColors.grayColor, //blue
                  borderRadius: BorderRadius.circular(45.r),
                ),
                child: Container(
                  height: 90.h,
                  width: 260.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.blue12Color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.r),
                      bottomLeft: Radius.circular(45.r),
                    ),
                  ),
                  child: Text(
                    'Challenge',
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity.w,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.r),
                    bottomLeft: Radius.circular(40.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'I am a text',
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity.w,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.blue12Color,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.textColor,
                    width: 4.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    'I am a text',
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF94CCF9),
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF04589A),
                        offset: Offset(7, 7),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Text(
                    'I am a text',
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: const Color(0xFF04589A),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 250.h,
                width: double.infinity.w,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Container(
                  height: 100.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 250.h,
                width: double.infinity.w,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Container(
                  height: 100.h,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  height: 500.h,
                  width: double.infinity.w,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [0.3, 0.75],
                      colors: [
                        Color(0xFFba3660),
                        Color(0xFF1C256E),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
