import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/extentions/navigations.dart';
import 'package:student/shared/resources/image_resources.dart';

class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Image.asset(
        ImageResources.arrowRight,
        color: color == null ? Color(0xff212121) : color,
        height: 24.h,
        width: 24.w,
      ),
    );
  }
}
