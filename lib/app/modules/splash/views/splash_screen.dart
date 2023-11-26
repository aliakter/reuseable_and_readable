import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.goldColor,
      body: Center(
        child: GetBuilder<SplashController>(
          init: SplashController(),
          builder: (controller) {
            return Container(
              color: AppColors.goldColor,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
