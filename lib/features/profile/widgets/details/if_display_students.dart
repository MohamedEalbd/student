import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/profile/widgets/details/custom_my_card_capabilities.dart';
import 'package:student/features/profile/widgets/details/custom_row_Dailog.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';

class IfDisplayProfile extends StatelessWidget {
  const IfDisplayProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowDialog(
          title: tr.theLine,
          subTitle: tr.thirdSecondary,
        ),
        SizedBox(height: 8.h),
        Divider(
          color: ColorResources.blackColor.withOpacity(0.10),
        ),
        SizedBox(height: 8.h),
        CustomRowDialog(
          title: tr.devicesUsed,
          subTitle: tr.phone,
        ),
        SizedBox(height: 8.h),
        Divider(
          color: ColorResources.blackColor.withOpacity(0.10),
        ),
        SizedBox(height: 8.h),
        CustomRowDialog(
          title: tr.courses,
          subTitle: '2 ${tr.course}',
        ),
        SizedBox(height: 16.h),
        CustomMyCardCapabilities(
          title: tr.capabilities,
          course: '4 ${tr.lesson}',
          hour: tr.hour,
          duration: tr.duration,
          month: 'شهرين',
          daysOfWeek: 'يومين في الاسبوع',
          icon: IconsResources.clock,
        ),
        SizedBox(height: 16.h),
        CustomMyCardCapabilities(
          title: tr.achievement,
          course: '4 ${tr.lesson}',
          hour: tr.hour,
          duration: tr.duration,
          month: 'شهرين',
          daysOfWeek: 'يومين في الاسبوع',
          icon: IconsResources.clock,
        ),
      ],
    );
  }
}
