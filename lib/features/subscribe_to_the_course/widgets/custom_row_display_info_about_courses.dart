import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomRowDisplayInfoAboutCourses extends StatelessWidget {
  const CustomRowDisplayInfoAboutCourses({
    super.key,
    required this.title,
    this.subTitle = '',
    required this.image,
    required this.trailing,
    this.background,
  });
  final String title;
  final String subTitle;
  final String image;
  final String trailing;
  final Color? background;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
          color: background,
        ),
        SizedBox(width: 8.w),
        Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 16.94.sp,
            appFontWeight: FontWeight.w600,
            color: ColorResources.blackColor,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          subTitle,
          // textAlign: TextAlign.center,
          style: AppTextStyle.textStyle(
            appFontSize: 16.sp,
            appFontHeight: 20.16.sp,
            appFontWeight: FontWeight.w500,
            color: ColorResources.blackColor.withOpacity(0.50),
          ),
        ),
        Spacer(),
        Container(
          //height: 31.h,
          //width: 90.w,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorResources.primaryColor.withOpacity(0.05),
          ),
          child: Text(
            trailing,
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyle(
              appFontSize: 12.sp,
              appFontHeight: 15.12.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
