import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/home/models/course_model.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/widgets/custom_myprecent_result.dart';

class DisplayCourses extends StatelessWidget {
  const DisplayCourses({
    super.key,
    required this.courses,
    this.onTap,
  });
  final CourseModel courses;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // height: 97.h,
        /// width: 342.w,
        //alignment: Alignment.center,
        padding: EdgeInsets.only(top: 8.h, right: 8.w, bottom: 8.h, left: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: ColorResources.whiteColor,
          border: Border.all(
            color: ColorResources.primaryColor,
            width: 1.5.w,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(courses.imageUrl!),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  courses.title!,
                  style: AppTextStyle.textStyle(
                      appFontSize: 18.sp,
                      appFontHeight: 22.68.sp,
                      appFontWeight: FontWeight.w600,
                      color: ColorResources.primaryColor),
                ),
                Text(
                  courses.description!,
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 17.64.sp,
                    appFontWeight: FontWeight.w500,
                    color: ColorResources.blackColor.withOpacity(0.50),
                  ),
                ),
                Text(
                  tr.hour,
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 17.64.sp,
                    appFontWeight: FontWeight.w500,
                    color: ColorResources.blackColor.withOpacity(0.50),
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomMyPercentResult(
              isSingleWidget: true,
              percent: 0.80,
              radius: 40,
            ),
          ],
        ),
      ),
    );
  }
}
