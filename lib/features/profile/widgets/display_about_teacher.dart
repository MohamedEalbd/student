import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/profile/widgets/custom_title_profile.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class DisplayAboutTeacher extends StatelessWidget {
  const DisplayAboutTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTitleProfile(title: tr.evaluations),
        SizedBox(height: 4.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              ...List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 13.sp,
                  color: Color(
                    0xFFFEC70F,
                  ),
                );
              }),
              SizedBox(width: 4.w),
              Text(
                "(4.5)",
                style: AppTextStyle.textStyle(
                  appFontSize: 14.sp,
                  appFontHeight: 16.94.sp,
                  appFontWeight: FontWeight.w500,
                  color: ColorResources.blackColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Divider(
            color: ColorResources.blackColor.withOpacity(0.10),
          ),
        ),
        SizedBox(height: 16.h),
        CustomTitleProfile(title: tr.description),
        SizedBox(height: 4.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            tr.aMathTeacherWithMoreThanTenYearsOfExperience,
            style: AppTextStyle.textStyle(
              appFontSize: 14.sp,
              appFontHeight: 16.94.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.blackColor.withOpacity(0.50),
            ),
          ),
        ),
      ],
    );
  }
}
