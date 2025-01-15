import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';

class CustomRowDialog extends StatelessWidget {
  const CustomRowDialog(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          SvgPicture.asset(
            IconsResources.note,
            height: 20.h,
            width: 20.w,
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
              subTitle,
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
    );
  }
}
