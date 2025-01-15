import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomLinerPercentIndicator extends StatelessWidget {
  const CustomLinerPercentIndicator({
    super.key,
    this.isProfile = false,
    required this.percent,
  });
  final bool isProfile;
  final double percent;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return SizedBox(
      child: LinearPercentIndicator(
        animation: true,
        animationDuration: 1200,
        width: 270.w,
        lineHeight: 6.h,
        barRadius: Radius.circular(5.r),
        linearStrokeCap: LinearStrokeCap.roundAll,
        percent: percent,
        isRTL: true,
        backgroundColor: isProfile
            ? ColorResources.greenColor.withOpacity(0.05)
            : Colors.grey.shade400,
        progressColor: ColorResources.greenColor,
      ),
    );
  }
}
