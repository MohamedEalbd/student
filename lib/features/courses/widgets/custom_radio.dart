import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomRadio extends StatelessWidget {
  const CustomRadio({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            title,
            style: AppTextStyle.textStyle(
              appFontSize: 20.sp,
              appFontHeight: 24.2.sp,
              appFontWeight: FontWeight.w700,
              color: ColorResources.primaryColor,
            ),
          ),
        ),
        Icon(Icons.circle_outlined),
      ],
    );
  }
}
