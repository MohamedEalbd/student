import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomMyPercentResult extends StatelessWidget {
  const CustomMyPercentResult({
    super.key,
    this.number = 0,
    this.title = '',
    this.isColor = false,
    required this.percent,
    this.isSingleWidget = false,
    required this.radius,
    this.isGradient = false,
  });
  final int number;
  final String title;
  final bool isColor;
  final bool isGradient;
  final double percent;
  final double radius;
  final bool isSingleWidget;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: radius,
      lineWidth: 6.0,
      percent: percent,
      center: isSingleWidget
          ? Text(
              "${80}%",
              style: AppTextStyle.textStyle(
                isPlusJakartaSans: true,
                appFontSize: 16.sp,
                appFontHeight: 20.16.sp,
                appFontWeight: FontWeight.w700,
                color: isGradient
                    ? ColorResources.whiteColor
                    : ColorResources.primaryColor,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isColor ? '%$number' : "$number",
                  style: AppTextStyle.textStyle(
                    isPlusJakartaSans: true,
                    appFontSize: 40.sp,
                    appFontHeight: 50.4.sp,
                    appFontWeight: FontWeight.w700,
                    color: isColor
                        ? ColorResources.greenColor
                        : ColorResources.primaryColor,
                  ),
                ),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.textStyle(
                    isPlusJakartaSans: true,
                    appFontSize: 10.sp,
                    appFontHeight: 12.6.sp,
                    appFontWeight: FontWeight.w700,
                    color: isColor
                        ? ColorResources.greenColor
                        : ColorResources.primaryColor,
                  ),
                ),
              ],
            ),
      backgroundColor: isColor
          ? ColorResources.greenColor.withOpacity(0.10)
          : isGradient
              ? ColorResources.whiteColor.withOpacity(0.10)
              : ColorResources.primaryColor.withOpacity(0.10),
      progressColor: isColor
          ? ColorResources.greenColor
          : isGradient
              ? ColorResources.whiteColor
              : ColorResources.primaryColor,
    );
  }
}
