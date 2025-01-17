import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/resources/color_resources.dart';

import '../classes/text_style.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
    required this.title,
    this.isProfile = false,
  });
  final String title;
  final bool isProfile;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.textStyle(
        appFontSize: 20.sp,
        color:
            isProfile ? ColorResources.whiteColor : ColorResources.primaryColor,
        appFontWeight: FontWeight.w600,
        appFontHeight: 24.2.sp,
      ),
    );
  }
}
