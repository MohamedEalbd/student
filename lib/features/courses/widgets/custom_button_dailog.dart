import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomButtonDialog extends StatelessWidget {
  const CustomButtonDialog({
    super.key,
    required this.title,
    this.onPressed,
    this.isNext = false,
    this.backgroundColor,
  });
  final String title;
  final void Function()? onPressed;
  final bool isNext;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isNext ? ColorResources.primaryColor : Color(0xFFD22D2D),
      height: 33.h,
      minWidth: 310.w,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.r),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 14.sp,
          appFontHeight: 16.94.sp,
          appFontWeight: FontWeight.w600,
          color: ColorResources.whiteColor,
        ),
      ),
    );
  }
}
