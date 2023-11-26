import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:useable_and_readable/app/common_widget/custom_appbar.dart';
import 'package:useable_and_readable/app/common_widget/reuseable_textButton.dart';
import 'package:useable_and_readable/app/config/color.dart';
import '../../../routes/routes.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const CustomAppBar(
          title: 'HomeScreen',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReuseAbleTextButton(
              text: "Container",
              onTap: () {
                Get.toNamed(Routes.container);
              },
            ),
            SizedBox(height: 10.h),
            ReuseAbleTextButton(
              text: "All Text",
              onTap: () {
                Get.toNamed(Routes.textView);
              },
            ),
            SizedBox(height: 10.h),
            ReuseAbleTextButton(
              text: "Chip Widget",
              onTap: () {
                Get.toNamed(Routes.chipWidget);
              },
            ),
            SizedBox(height: 10.h),
            ReuseAbleTextButton(
              text: "Programming Concept",
              onTap: () {
                Get.toNamed(Routes.programmingConcept);
              },
            ),
          ],
        ),
      ),
    );
  }
}
