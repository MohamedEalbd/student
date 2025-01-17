import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomTitleAddCourse extends StatelessWidget {
  const CustomTitleAddCourse({
    super.key,
    required this.title,
    this.isAddText = false,
    this.isColor = false,
  });
  final String title;
  final bool isAddText;
  final bool isColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: isAddText
          ? AppTextStyle.textStyle(
              appFontSize: 14.sp,
              appFontHeight: 16.94.sp,
              appFontWeight: FontWeight.w500,
              color: isColor
                  ? ColorResources.whiteColor
                  : ColorResources.blackColor.withOpacity(0.50),
            )
          : AppTextStyle.textStyle(
              isPlusJakartaSans: true,
              appFontSize: 14.sp,
              appFontHeight: 17.64.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.blackColor.withOpacity(0.50),
            ),
    );
  }
}
