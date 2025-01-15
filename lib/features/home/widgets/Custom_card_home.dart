import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';

class CustomCardHome extends StatelessWidget {
  const CustomCardHome({
    super.key,
    required this.title,
    required this.colorContainer,
    required this.colorText,
    this.onTap,
  });

  final String title;
  final Color colorContainer;
  final Color colorText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        //height: 35.h,
        //width: 117.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: colorContainer,
        ),
        child: Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 16.sp,
            appFontHeight: 19.36.sp,
            appFontWeight: FontWeight.w400,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
