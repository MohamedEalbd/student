import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomContainerDisplayStudentsOrDegree extends StatelessWidget {
  const CustomContainerDisplayStudentsOrDegree({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 345,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorResources.blackColor.withOpacity(0.10),
        ),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: child,
    );
  }
}
