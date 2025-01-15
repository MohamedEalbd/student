import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomTitleLogin extends StatelessWidget {
  const CustomTitleLogin({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.textStyle(
        appFontSize: 32.sp,
        appFontHeight: 38.73.sp,
        appFontWeight: FontWeight.w700,
        color: ColorResources.primaryColor,
      ),
    );
  }
}
