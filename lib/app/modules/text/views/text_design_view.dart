import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:useable_and_readable/app/config/color.dart';
import '../../../common_widget/custom_appbar.dart';
import '../../../routes/routes.dart';
import '../controllers/text_design_controller.dart';

class TextDesignScreen extends GetView<TextDesignController> {
  const TextDesignScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextDesignController textDesignController = TextDesignController();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const CustomAppBar(
          title: 'All Text Design',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Text',
                style: TextStyle(
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: 10.h),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20.sp,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: 'Click ',
                      style: TextStyle(
                        fontSize: 25.sp,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: const Icon(
                          Icons.add,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: ' to add',
                      style: TextStyle(
                        fontSize: 25.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Hello World! This is a Text Widget.",
                style: TextStyle(
                  fontSize: 35.sp,
                  color: Colors.purple,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 8,
                  wordSpacing: 20,
                  backgroundColor: Colors.yellow,
                  shadows: [
                    Shadow(
                      color: Colors.blueAccent,
                      offset: const Offset(2, 1),
                      blurRadius: 10.r,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 20.h,
                width: Get.width.w,
                child: AutoSizeText(
                  'Hello Geeks!. We will break this line into 3 lines !!',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 300.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListView.builder(
                  itemCount: textDesignController.items.length,
                  itemBuilder: (context, index) {
                    final text = textDesignController.items[index];
                    return ListTile(
                      title: Text(text),
                      onTap: () {},
                    );
                  },
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
