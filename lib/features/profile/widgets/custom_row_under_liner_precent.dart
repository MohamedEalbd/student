import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomRowUnderLinerPercent extends StatelessWidget {
  const CustomRowUnderLinerPercent({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isArabic
          ? EdgeInsets.symmetric(horizontal: 3.w)
          : EdgeInsets.only(left: 10.w, right: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.textStyle(
              isPlusJakartaSans: true,
              appFontSize: 10.sp,
              appFontHeight: 12.6.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.greenColor,
            ),
          ),
          Text(
            subTitle,
            style: AppTextStyle.textStyle(
              isPlusJakartaSans: true,
              appFontSize: 10.sp,
              appFontHeight: 12.6.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.greenColor,
            ),
          ),
        ],
      ),
    );
  }
}
