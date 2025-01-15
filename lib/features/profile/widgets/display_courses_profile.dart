import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/profile/cubit/profile_cubit.dart';
import 'package:student/features/profile/widgets/custom_hint_container.dart';
import 'package:student/shared/widgets/custom_myprecent_result.dart';
import 'package:student/features/profile/widgets/custom_row_to_display_info.dart';
import 'package:student/features/profile/widgets/custom_row_under_liner_precent.dart';
import 'package:student/features/profile/widgets/text_begin_course.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/widgets/liner_precent_indecator.dart';

class DisplayCoursesProfile extends StatelessWidget {
  const DisplayCoursesProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tr.capabilities,
          style: AppTextStyle.textStyle(
              isPlusJakartaSans: true,
              appFontSize: 18.sp,
              appFontHeight: 22.68.sp,
              appFontWeight: FontWeight.w600,
              color: ColorResources.primaryColor),
        ),
        SizedBox(height: 10.h),
        CustomHintContainer(
          title: tr.thirdSecondary,
        ),
        SizedBox(height: 10.h),
        CustomHintContainer(
          widget: CustomRowToDisplayInfo(
            isSubTitle: true,
            title: tr.duration,
            subTitle: 'شهرين',
            trainingText: 'يومين في الاسبوع',
            icon: IconsResources.clock,
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(ProfileCubit.instance.days.length, (index) {
              return GestureDetector(
                onTap: () {
                  ProfileCubit.instance.selectDay1(index);
                },
                child: Container(
                  height: 31.h,
                  width: 151.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ProfileCubit.instance.currentDay1 == index
                        ? ColorResources.primaryColor
                        : ColorResources.primaryColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Text(
                    ProfileCubit.instance.days[index],
                    style: AppTextStyle.textStyle(
                      isPlusJakartaSans: true,
                      appFontSize: 12.sp,
                      appFontHeight: 15.12.sp,
                      appFontWeight: FontWeight.w500,
                      color: ProfileCubit.instance.currentDay1 == index
                          ? ColorResources.whiteColor
                          : ColorResources.primaryColor,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
        SizedBox(height: 10.h),
        CustomHintContainer(
          widget: CustomRowToDisplayInfo(
            title: tr.theLectures,
            subTitle: '',
            trainingText: '8 ${tr.lectures}',
            icon: IconsResources.note,
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          height: 155.h,
          width: 310.w,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: ColorResources.primaryColor.withOpacity(0.10),
              width: 1.w,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr.remainingCourse,
                style: AppTextStyle.textStyle(
                  appFontSize: 12.sp,
                  appFontHeight: 15.12.sp,
                  appFontWeight: FontWeight.w500,
                  color: ColorResources.blackColor.withOpacity(0.50),
                ),
              ),
              SizedBox(height: 6.h),
              CustomLinerPercentIndicator(percent: 0.65, isProfile: true),
              SizedBox(height: 2.h),
              CustomRowUnderLinerPercent(
                title: '65% ${tr.completed}',
                subTitle: '35% ${tr.remaining}',
              ),
              SizedBox(height: 10.h),
              Row(
                spacing: 10.w,
                children: [
                  TextBeginCourse(
                    title: tr.from,
                    subTitle: '4/29/2024',
                  ),
                  TextBeginCourse(
                    title: tr.to,
                    subTitle: '4/29/2024',
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              CustomHintContainer(
                title: "2 ${tr.ofTheWeeks}",
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            CustomMyPercentResult(
              radius: 60,
              percent: 0.10,
              number: ProfileCubit.instance.results[0]['number'],
              title: ProfileCubit.instance.results[0]['title'],
            ),
            CustomMyPercentResult(
              radius: 60,
              percent: 0.25,
              number: ProfileCubit.instance.results[1]['number'],
              title: ProfileCubit.instance.results[1]['title'],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            CustomMyPercentResult(
              radius: 60,
              percent: 0.10,
              number: ProfileCubit.instance.results[2]['number'],
              title: ProfileCubit.instance.results[2]['title'],
            ),
            CustomMyPercentResult(
              radius: 60,
              percent: 0.15,
              number: ProfileCubit.instance.results[3]['number'],
              title: ProfileCubit.instance.results[3]['title'],
            ),
          ],
        ),
        SizedBox(height: 32.h),
        Text(
          tr.achievement,
          style: AppTextStyle.textStyle(
            appFontSize: 18.sp,
            appFontHeight: 22.68.sp,
            appFontWeight: FontWeight.w600,
            color: ColorResources.primaryColor,
          ),
        ),
        SizedBox(height: 10.h),
        CustomHintContainer(
          title: tr.thirdSecondary,
        ),
        SizedBox(height: 10.h),
        CustomHintContainer(
          widget: CustomRowToDisplayInfo(
            title: tr.duration,
            subTitle: 'شهرين',
            trainingText: 'يومين في الاسبوع',
            icon: IconsResources.clock,
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(ProfileCubit.instance.days.length, (index) {
              return GestureDetector(
                onTap: () {
                  ProfileCubit.instance.selectDay2(index);
                },
                child: Container(
                  height: 31.h,
                  width: 151.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ProfileCubit.instance.currentDay2 == index
                        ? ColorResources.primaryColor
                        : ColorResources.primaryColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Text(
                    ProfileCubit.instance.days[index],
                    style: AppTextStyle.textStyle(
                      appFontSize: 12.sp,
                      appFontHeight: 15.12.sp,
                      appFontWeight: FontWeight.w500,
                      color: ProfileCubit.instance.currentDay2 == index
                          ? ColorResources.whiteColor
                          : ColorResources.primaryColor,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
        SizedBox(height: 10.h),
        CustomHintContainer(
          widget: CustomRowToDisplayInfo(
            title: tr.theLectures,
            subTitle: '',
            trainingText: '8 ${tr.lectures}',
            icon: IconsResources.note,
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          height: 155.h,
          width: 310.w,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: ColorResources.primaryColor.withOpacity(0.10),
              width: 1.w,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr.remainingCourse,
                style: AppTextStyle.textStyle(
                  appFontSize: 12.sp,
                  appFontHeight: 15.12.sp,
                  appFontWeight: FontWeight.w500,
                  color: ColorResources.blackColor.withOpacity(0.50),
                ),
              ),
              SizedBox(height: 6.h),
              CustomLinerPercentIndicator(percent: 0.65, isProfile: true),
              SizedBox(height: 2.h),
              CustomRowUnderLinerPercent(
                title: '65% ${tr.completed}',
                subTitle: '35% ${tr.remaining}',
              ),
              SizedBox(height: 10.h),
              Row(
                spacing: 10.w,
                children: [
                  TextBeginCourse(
                    title: tr.from,
                    subTitle: '4/29/2024',
                  ),
                  TextBeginCourse(
                    title: tr.to,
                    subTitle: '4/29/2024',
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              CustomHintContainer(
                title: "2 ${tr.ofTheWeeks}",
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            CustomMyPercentResult(
              radius: 60,
              percent: 0.10,
              number: ProfileCubit.instance.results[0]['number'],
              title: ProfileCubit.instance.results[0]['title'],
            ),
            CustomMyPercentResult(
              radius: 60,
              percent: 0.25,
              number: ProfileCubit.instance.results[1]['number'],
              title: ProfileCubit.instance.results[1]['title'],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            CustomMyPercentResult(
              radius: 60,
              percent: 0.10,
              number: ProfileCubit.instance.results[2]['number'],
              title: ProfileCubit.instance.results[2]['title'],
            ),
            CustomMyPercentResult(
              radius: 60,
              percent: 0.15,
              number: ProfileCubit.instance.results[3]['number'],
              title: ProfileCubit.instance.results[3]['title'],
            ),
          ],
        ),
      ],
    );
  }
}
