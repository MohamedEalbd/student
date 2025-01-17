import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomHintContainer extends StatelessWidget {
  const CustomHintContainer({
    super.key,
    this.title = "",
    this.widget,
  });
  final String title;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.h,
      width: 310.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      //margin: EdgeInsets.symmetric(horizontal: 16.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: ColorResources.blackColor.withOpacity(0.05),
      ),
      child: title.isNotEmpty
          ? Text(
              title,
              style: AppTextStyle.textStyle(
                  isPlusJakartaSans: true,
                  appFontSize: 12.sp,
                  appFontHeight: 15.12.sp,
                  appFontWeight: FontWeight.w500,
                  color: ColorResources.primaryColor),
            )
          : widget,
    );
  }
}
