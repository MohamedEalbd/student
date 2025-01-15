import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264.h,
      width: 390.w,
      padding: EdgeInsets.only(top: 40.h, bottom: 12.h),
      decoration: BoxDecoration(
        color: ColorResources.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Image.asset(ImageResources.profile),
          SizedBox(height: 4.h),
          Text(
            "بكر",
            style: AppTextStyle.textStyle(
              isPlusJakartaSans: true,
              appFontSize: 16.sp,
              appFontHeight: 20.18.sp,
              appFontWeight: FontWeight.w600,
              color: ColorResources.whiteColor,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            "bakrtaha505@gmail.com",
            style: AppTextStyle.textStyle(
              isPlusJakartaSans: true,
              appFontSize: 14.sp,
              appFontHeight: 17.64.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.whiteColor,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 26.h,
            width: 101.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: ColorResources.whiteColor,
            ),
            child: Text(
             tr.edit,
              style: AppTextStyle.textStyle(
                isPlusJakartaSans: true,
                appFontSize: 14.sp,
                appFontHeight: 17.64.sp,
                appFontWeight: FontWeight.w600,
                color: ColorResources.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
