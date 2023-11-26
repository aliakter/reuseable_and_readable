import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:useable_and_readable/app/common_widget/custom_appbar.dart';
import '../controllers/programming_concept_controller.dart';

class ProgrammingConceptView extends GetView<ProgrammingConceptController> {
  const ProgrammingConceptView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const CustomAppBar(
          title: 'Programming Concept',
        ),
      ),
      body: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First 4 index print",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      for (int i = 0; i < 4; i++)
                        Text(
                          controller.aToZList[i],
                          style: TextStyle(fontSize: 18.sp),
                        ),
                    ],
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Last 4 index print",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      for (int i = controller.aToZList.length - 4;
                          i < controller.aToZList.length;
                          i++)
                        Text(
                          controller.aToZList[i],
                          style: TextStyle(fontSize: 18.sp),
                        ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Middle 4 index print",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  for (int i = (controller.aToZList.length ~/ 2) - 2;
                      i < (controller.aToZList.length ~/ 2) + 2;
                      i++)
                    Text(
                      controller.aToZList[i],
                      style: TextStyle(fontSize: 18.sp),
                    ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Specific index print",
                      style: TextStyle(fontSize: 20.sp)),
                  SizedBox(height: 5.h),
                  for (int index in [9, 15]) buildItemAtIndex(index),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemAtIndex(int index) {
    if (index >= 0 && index < controller.aToZList.length) {
      return Text(
        '$index index ${controller.aToZList[index]}',
        style: TextStyle(fontSize: 18.sp),
      );
    } else {
      return Text(
        'Index $index is out of bounds',
        style: TextStyle(fontSize: 18.sp, color: Colors.red),
      );
    }
  }
}
