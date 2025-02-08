import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/courses/cubit/courses_cubit.dart';
import 'package:student/features/courses/widgets/custom_drop_list_add_course.dart';
import 'package:student/features/courses/widgets/custom_hint_container.dart';
import 'package:student/features/courses/widgets/custom_title_add_course.dart';
import 'package:student/features/courses/widgets/lecturers.dart';
import 'package:student/features/profile/widgets/custom_row_under_liner_precent.dart';
import 'package:student/features/profile/widgets/details/custom_card_details_students.dart';
import 'package:student/features/profile/widgets/details/select_title_to_details.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/widgets/custom_card_dailog.dart';
import 'package:student/shared/widgets/custom_container_display_students_or_degree.dart';
import 'package:student/shared/widgets/liner_precent_indecator.dart';

class AbilitiesCourseScreen extends StatelessWidget {
  const AbilitiesCourseScreen({
    super.key,
    this.isAbilities = false,
  });
  final bool isAbilities;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return BlocBuilder<CoursesCubit, CoursesState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            child: Column(
              children: [
                CustomCardDetailsProfile(isCourses: true),
                SizedBox(height: 16.h),
                CustomCardDialog(
                  isDisplayCourse: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.remainingCourse,
                        style: AppTextStyle.textStyle(
                          appFontSize: 12.sp,
                          appFontHeight: 14.52.sp,
                          appFontWeight: FontWeight.w500,
                          color: ColorResources.blackColor.withOpacity(0.50),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomLinerPercentIndicator(percent: 0.65),
                      SizedBox(height: 2.h),
                      CustomRowUnderLinerPercent(
                        title: "65% ${tr.complete}",
                        subTitle: "35% ${tr.remaining}",
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          CustomTitleAddCourse(title: "${tr.from}:"),
                          SizedBox(width: 8.w),
                          CustomDropListAddCourse(
                            isMine: true,
                            initialValue: "4/29/2024",
                            items: ["4/29/2024", "5/29/2024"],
                          ),
                          SizedBox(width: 8.w),
                          CustomTitleAddCourse(title: "${tr.to}:"),
                          SizedBox(width: 8.w),
                          CustomDropListAddCourse(
                            isMine: true,
                            initialValue: "5/29/2024",
                            items: ["4/29/2024", "5/29/2024"],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      CustomHintContainer(
                        title: "2 ${tr.ofTheWeeks}",
                      ),
                      SizedBox(height: 8.h),
                      CustomHintContainer(
                        title: tr.days,
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ...List.generate(CoursesCubit.instance.days.length,
                              (index) {
                            return GestureDetector(
                              onTap: () {
                                CoursesCubit.instance.selectDay1(index);
                              },
                              child: Container(
                                height: 31.h,
                                width: 151.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color:
                                      CoursesCubit.instance.currentDay1 == index
                                          ? ColorResources.primaryColor
                                          : ColorResources.primaryColor
                                              .withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Text(
                                  CoursesCubit.instance.days[index],
                                  style: AppTextStyle.textStyle(
                                    isPlusJakartaSans: true,
                                    appFontSize: 12.sp,
                                    appFontHeight: 15.12.sp,
                                    appFontWeight: FontWeight.w500,
                                    color: CoursesCubit.instance.currentDay1 ==
                                            index
                                        ? ColorResources.whiteColor
                                        : ColorResources.primaryColor,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        IconsResources.device,
                        height: 20.h,
                        width: 20.w,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        tr.allowedDevices,
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontHeight: 16.9.sp,
                          appFontWeight: FontWeight.w500,
                          color: ColorResources.blackColor.withOpacity(0.50),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 108.w,
                        child: CustomHintContainer(
                          title: tr.mobilePhone,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                CustomCardDialog(
                  isHeight: true,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: ResponsiveScreen.height,
                    ),
                    child: Column(
                      children: [
                        CustomContainerDisplayStudentsOrDegree(
                          child: Row(
                            children: [
                              ...List.generate(
                                  CoursesCubit.instance.tests.length, (index) {
                                return SelectTitleToDetails(
                                  currentIndex:
                                      CoursesCubit.instance.selectTest,
                                  onTap: () {
                                    CoursesCubit.instance.selectTests(index);
                                  },
                                  title: CoursesCubit.instance.tests[index]
                                      ['title'],
                                  image: CoursesCubit.instance.tests[index]
                                      ['imageUrl'],
                                  colorContainer:
                                      CoursesCubit.instance.selectTest == index
                                          ? ColorResources.primaryColor
                                          : ColorResources.whiteColor,
                                  colorText:
                                      CoursesCubit.instance.selectTest == index
                                          ? ColorResources.whiteColor
                                          : ColorResources.primaryColor,
                                );
                              }),
                            ],
                          ),
                        ),
                        if (CoursesCubit.instance.selectTest == 0)
                          Expanded(
                            flex: 1,
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return Lecturers(
                                    model:
                                        CoursesCubit.instance.lecturers[index]);
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                height: 8.h,
                              ),
                              itemCount: CoursesCubit.instance.lecturers.length,
                            ),
                          ),
                        if (CoursesCubit.instance.selectTest == 1)
                          Expanded(
                            flex: 1,
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return Lecturers(
                                    model: CoursesCubit.instance.test[index]);
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                height: 8.h,
                              ),
                              itemCount: CoursesCubit.instance.test.length,
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
