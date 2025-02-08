// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';

class HintRow extends StatelessWidget {
  const HintRow({
    super.key,
    required this.title,
    // required this.subTitle,
    // required this.image,
    // required this.trailing,
    // this.background,
  });
  final String title;
  // final String subTitle;
  // final String image;
  // final String trailing;
  // final Color? background;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          IconsResources.video,
          height: 20.h,
          width: 20.w,
          color: ColorResources.blackColor,
        ),
        SizedBox(width: 8.w),
        Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 16.94.sp,
            appFontWeight: FontWeight.w500,
            color: ColorResources.blackColor.withOpacity(0.50),
          ),
        ),
        // SizedBox(width: 8.w),
        // Text(
        //   subTitle,
        //   style: AppTextStyle.textStyle(
        //     appFontSize: 16.sp,
        //     appFontHeight: 20.16.sp,
        //     appFontWeight: FontWeight.w500,
        //     color: ColorResources.blackColor.withOpacity(0.50),
        //   ),
        // ),
        Spacer(),
        Row(
          children: [
            SvgPicture.asset(
              IconsResources.clock,
              height: 16.h,
              width: 16.w,
              color: ColorResources.blackColor.withOpacity(0.50),
            ),
            Text(
              " 5 ${tr.hour}",
              style: AppTextStyle.textStyle(
                isPlusJakartaSans: true,
                appFontSize: 14.sp,
                appFontHeight: 17.64.sp,
                appFontWeight: FontWeight.w500,
                color: ColorResources.blackColor.withOpacity(0.50),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
