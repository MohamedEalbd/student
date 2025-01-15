import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class TextBeginCourse extends StatelessWidget {
  const TextBeginCourse(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 6.w,
      children: [
        Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 16.94.sp,
            appFontWeight: FontWeight.w500,
            color: ColorResources.blackColor.withOpacity(0.50),
          ),
        ),
        Container(
          height: 23.h,
          width: isArabic ? 111.w : 100.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: ColorResources.blackColor.withOpacity(0.05),
          ),
          child: Text(
            subTitle,
            style: AppTextStyle.textStyle(
              appFontSize: 12.sp,
              appFontHeight: 14.52.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.blackColor.withOpacity(0.50),
            ),
          ),
        ),
      ],
    );
  }
}
