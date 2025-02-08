import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/subscribe_to_the_course/widgets/custom_row_display_info_about_courses.dart';
import 'package:student/features/subscribe_to_the_course/widgets/hint_row.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';

class AboutCourses extends StatelessWidget {
  const AboutCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr.abilities,
                style: AppTextStyle.textStyle(
                  appFontSize: 16.sp,
                  appFontHeight: 19.36.sp,
                  appFontWeight: FontWeight.w600,
                  color: ColorResources.primaryColor,
                ),
              ),
              Row(
                spacing: 5.w,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: ColorResources.yellowColor,
                    weight: 13.33.w,
                    size: 12.77,
                  ),
                  Text(
                    "(4.2)",
                    style: AppTextStyle.textStyle(
                      appFontSize: 14.sp,
                      appFontHeight: 16.94.sp,
                      appFontWeight: FontWeight.w500,
                      color: ColorResources.blackColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          CustomRowDisplayInfoAboutCourses(
            title: tr.duration,
            image: IconsResources.clock,
            subTitle: 'شهرين',
            trailing: 'يومين في الاسبوع',
          ),
          SizedBox(height: 16.h),
          CustomRowDisplayInfoAboutCourses(
              title: "المستوى",
              image: IconsResources.chart,
              background: ColorResources.primaryColor,
              trailing: "مبتدأين"),
          SizedBox(height: 16.h),
          CustomRowDisplayInfoAboutCourses(
              title: "الاجهزه المتاحة",
              image: IconsResources.device,
              trailing: "الهاتف المحمول/ كومبيوتر"),
          SizedBox(height: 8.h),
          Text(
            "في حالة استخدام جهاز مختلف عن الذي تم التسجيل من خلاله سيتم حذف الاشتراك ولا يمكنك استخدام اكثر من جهاز واحد",
            textAlign: TextAlign.start,
            style: AppTextStyle.textStyle(
              appFontSize: 10.sp,
              appFontHeight: 12.1.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.blackColor.withOpacity(0.50),
            ),
          ),
          SizedBox(height: 16.h),
          CustomRowDisplayInfoAboutCourses(
            title: tr.tests,
            image: IconsResources.clock,
            trailing: "4 ${tr.test}",
          ),
          SizedBox(height: 16.h),
          CustomRowDisplayInfoAboutCourses(
            title: tr.theLectures,
            image: IconsResources.note,
            trailing: "8 ${tr.lectures}",
          ),
          SizedBox(height: 16.h),
          HintRow(
            title: 'الرياضيات',
          ),
          SizedBox(height: 16.h),
          HintRow(
            title: 'الرياضيات',
          ),
          SizedBox(height: 16.h),
          HintRow(
            title: 'الرياضيات',
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
