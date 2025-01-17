import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomRowLive extends StatelessWidget {
  const CustomRowLive({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: ColorResources.blackColor.withOpacity(0.05)),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontHeight: 19.36.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.blackColor,
            ),
          ),
          Spacer(),
          Text(
            subTitle,
            style: AppTextStyle.textStyle(
              appFontSize: 14.sp,
              appFontHeight: 16.94.sp,
              appFontWeight: FontWeight.w600,
              color: ColorResources.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
