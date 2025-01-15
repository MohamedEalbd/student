import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomCardDialog extends StatelessWidget {
  const CustomCardDialog({
    super.key,
    this.child,
    this.isProfile = false,
    this.isDisplayCourse = false,
    this.height,
  });
  final Widget? child;
  final bool isProfile;
  final bool isDisplayCourse;
  final double? height;
  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Container(
      height: isProfile ? height : 500.h,
      width: 345.w,
      padding: EdgeInsets.only(bottom: 30.h),
      decoration: BoxDecoration(
        color: ColorResources.whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(221, 255, 255, 255),
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0.0, 0.0),
          ),
        ],
        borderRadius: isProfile
            ? BorderRadius.circular(25.r)
            : BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
        border: Border.all(
          width: 1.w,
          color: ColorResources.blackColor.withOpacity(0.10),
        ),
      ),
      child: child,
    );
  }
}
