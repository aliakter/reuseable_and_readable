import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:useable_and_readable/app/config/color.dart';
import '../../../common_widget/custom_appbar.dart';
import '../controllers/chip_widget_controller.dart';

class ChipWidgetScreen extends GetView<ChipWidgetController> {
  const ChipWidgetScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const CustomAppBar(
          title: 'Chip Widget',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Wrap(
                spacing: 7,
                children: <Widget>[
                  Chip(
                    label: Text('Cupcake'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Donut'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Eclair'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Froyo'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Gingerbread'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Honeycomb'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Ice cream Sandwich'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Jelly Bean'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Kit Kat'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Lollipop'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Marshmallow'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Nougat'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Oreo'),
                    backgroundColor: AppColors.greenColor,
                  ),
                  Chip(
                    label: Text('Pie'),
                    backgroundColor: AppColors.greenColor,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
