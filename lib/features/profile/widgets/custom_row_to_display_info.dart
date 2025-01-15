import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomRowToDisplayInfo extends StatelessWidget {
  const CustomRowToDisplayInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.trainingText,
    required this.icon,
    this.isSubTitle = false,
  });
  final String title;
  final String subTitle;
  final String trainingText;
  final String icon;
  final bool isSubTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 8.w),
        Text(
          title,
          // textAlign: TextAlign.center,
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
            isPlusJakartaSans:isSubTitle? true : false,
            appFontSize: 16.sp,
            appFontHeight: 20.16.sp,
            appFontWeight: FontWeight.w500,
            color: ColorResources.blackColor.withOpacity(0.50),
          ),
        ),
        Spacer(),
        Text(
          trainingText,
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle(
            isPlusJakartaSans: true,
            appFontSize: 12.sp,
            appFontHeight: 15.12.sp,
            appFontWeight: FontWeight.w500,
            color: ColorResources.primaryColor,
          ),
        ),
      ],
    );
  }
}
