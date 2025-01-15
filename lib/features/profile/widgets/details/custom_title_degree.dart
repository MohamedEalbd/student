import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomTitleDegree extends StatelessWidget {
  const CustomTitleDegree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.h,
      width: 310.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: ColorResources.whiteColor,
        border: Border.all(
          color: ColorResources.primaryColor,
        ),
      ),
      child: Text(
        tr.degrees,
        style: AppTextStyle.textStyle(
          appFontSize: 14.sp,
          appFontHeight: 16.94.sp,
          appFontWeight: FontWeight.w600,
          color: ColorResources.primaryColor,
        ),
      ),
    );
  }
}
