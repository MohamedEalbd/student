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
    this.center,
    this.width,
    this.lineHeight = 6,
    this.backgroundColor,
    this.progressColor,
    this.barRadius,
  });
  final bool isProfile;
  final double percent;
  final Widget? center;
  final double? width;
  final double lineHeight;
  final Color? backgroundColor;
  final Color? progressColor;
  final Radius? barRadius;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return SizedBox(
      child: LinearPercentIndicator(
        animation: true,
        animationDuration: 1200,
        width: width,
        lineHeight: lineHeight,
        barRadius: barRadius == null ? Radius.circular(5.r) : barRadius,
        linearStrokeCap: LinearStrokeCap.roundAll,
        percent: percent,
        isRTL: true,
        center: center,
        backgroundColor: isProfile
            ? ColorResources.greenColor.withOpacity(0.05)
            : backgroundColor == null
                ? Colors.grey.shade400
                : backgroundColor,
        progressColor:
            progressColor == null ? ColorResources.greenColor : progressColor,
      ),
    );
  }
}
