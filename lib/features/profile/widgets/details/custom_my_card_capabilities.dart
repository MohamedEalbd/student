// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/image_resources.dart';
import 'package:student/shared/widgets/custom_myprecent_result.dart';

class CustomMyCardCapabilities extends StatelessWidget {
  const CustomMyCardCapabilities({
    super.key,
    required this.title,
    required this.course,
    required this.hour,
    required this.duration,
    required this.month,
    required this.daysOfWeek,
    required this.icon,
    this.isDegree = false,
    this.isCourse = false,
    this.isGradient = false,
  });
  final String title;
  final String course;
  final String hour;
  final String duration;
  final String month;
  final String daysOfWeek;
  final String icon;
  final bool isDegree;
  final bool isCourse;
  final bool isGradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        gradient: isGradient
            ? LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color(0xFF3C7098),
                  Color(0xFF22AD75),
                ],
              )
            : null,
        color: ColorResources.whiteColor,
        borderRadius: BorderRadius.circular(25.r),
        border: isDegree
            ? null
            : Border.all(
                color: ColorResources.primaryColor,
                width: 1.w,
              ),
        boxShadow: [
          BoxShadow(
            color: ColorResources.blackColor.withOpacity(0.08),
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(ImageResources.profile),
              SizedBox(width: 16.w),
              isDegree
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 2.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppTextStyle.textStyle(
                            isPlusJakartaSans: true,
                            appFontSize: 18.sp,
                            appFontHeight: 22.68.sp,
                            appFontWeight: FontWeight.w600,
                            color: ColorResources.primaryColor,
                          ),
                        ),
                        Text(
                          "احمد ابو العزم",
                          style: AppTextStyle.textStyle(
                            isPlusJakartaSans: true,
                            appFontSize: 14.sp,
                            appFontHeight: 17.64.sp,
                            appFontWeight: FontWeight.w500,
                            color: ColorResources.blackColor.withOpacity(0.50),
                          ),
                        ),
                        Text(
                          "8 ${tr.lectures}",
                          style: AppTextStyle.textStyle(
                            isPlusJakartaSans: true,
                            appFontSize: 14.sp,
                            appFontHeight: 17.64.sp,
                            appFontWeight: FontWeight.w500,
                            color: ColorResources.blackColor.withOpacity(0.50),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 2.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppTextStyle.textStyle(
                            appFontSize: 18.sp,
                            appFontHeight: 22.68.sp,
                            appFontWeight: FontWeight.w600,
                            color: isGradient
                                ? ColorResources.whiteColor
                                : ColorResources.primaryColor,
                          ),
                        ),
                        Text(
                          course,
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 17.64.sp,
                            appFontWeight: FontWeight.w500,
                            color: isGradient
                                ? ColorResources.whiteColor.withOpacity(0.50)
                                : ColorResources.blackColor.withOpacity(0.50),
                          ),
                        ),
                        Text(
                          hour,
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 17.64.sp,
                            appFontWeight: FontWeight.w500,
                            color: isGradient
                                ? ColorResources.whiteColor.withOpacity(0.50)
                                : ColorResources.blackColor.withOpacity(0.50),
                          ),
                        ),
                      ],
                    ),
              Spacer(),
              CustomMyPercentResult(
                radius: 40,
                percent: 0.80,
                isSingleWidget: true,
                isGradient: isGradient,
              ),
            ],
          ),
          if (isCourse == false) SizedBox(height: 8.h),
          if (isCourse == false)
            Row(
              children: [
                SvgPicture.asset(icon),
                SizedBox(width: 8.w),
                Text(
                  duration,
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 16.94.sp,
                    appFontWeight: FontWeight.w600,
                    color: ColorResources.blackColor,
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  month,
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
                  height: 31.h,
                  width: 90.w,
                  alignment: Alignment.center,
                  //padding: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: ColorResources.primaryColor.withOpacity(0.05),
                  ),
                  child: Text(
                    daysOfWeek,
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
            ),
        ],
      ),
    );
  }
}
