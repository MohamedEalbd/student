import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/profile/widgets/details/custom_container_display_degrees.dart';
import 'package:student/features/profile/widgets/details/custom_my_card_capabilities.dart';
import 'package:student/features/profile/widgets/details/custom_title_degree.dart';
import 'package:student/shared/resources/icons_resources.dart';

class IfDisplayDegrees extends StatelessWidget {
  const IfDisplayDegrees({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMyCardCapabilities(
          isDegree: true,
          title: tr.capabilities,
          course: '4 ${tr.lesson}',
          hour: tr.hour,
          duration: tr.duration,
          month: 'شهرين',
          daysOfWeek: 'يومين في الاسبوع',
          icon: IconsResources.clock,
        ),
        SizedBox(height: 8.h),
        CustomTitleDegree(),
        SizedBox(height: 8.h),
        CustomContainerDisplayDegrees(),
        SizedBox(height: 16.h),
        CustomMyCardCapabilities(
          isDegree: true,
          title: tr.achievement,
          course: '4 ${tr.lesson}',
          hour: tr.hour,
          duration: tr.duration,
          month: 'شهرين',
          daysOfWeek: 'يومين في الاسبوع',
          icon: IconsResources.clock,
        ),
        SizedBox(height: 16.h),
        CustomTitleDegree(),
        SizedBox(height: 8.h),
        CustomContainerDisplayDegrees(),
      ],
    );
  }
}
