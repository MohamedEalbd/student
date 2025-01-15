import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/courses/cubit/courses_cubit.dart';
import 'package:student/features/profile/widgets/details/custom_my_card_capabilities.dart';
import 'package:student/features/profile/widgets/details/select_title_to_details.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/widgets/custom_container_display_students_or_degree.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CoursesCubit, CoursesState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              children: [
                CustomContainerDisplayStudentsOrDegree(
                  child: Row(
                    children: [
                      ...List.generate(CoursesCubit.instance.words.length,
                          (index) {
                        return SelectTitleToDetails(
                          currentIndex: CoursesCubit.instance.currentIndex,
                          onTap: () {
                            CoursesCubit.instance.selectCard(index);
                          },
                          title: CoursesCubit.instance.words[index],
                          colorContainer:
                              CoursesCubit.instance.currentIndex == index
                                  ? ColorResources.primaryColor
                                  : ColorResources.whiteColor,
                          colorText: CoursesCubit.instance.currentIndex == index
                              ? ColorResources.whiteColor
                              : ColorResources.primaryColor,
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                if (CoursesCubit.instance.currentIndex == 0)
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: CoursesCubit.instance.listOfCourses.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          CoursesCubit.instance.selectDay1(index);
                        },
                        child: CustomMyCardCapabilities(
                          isCourse: true,
                          isGradient: CoursesCubit.instance.currentDay1 == index
                              ? true
                              : false,
                          title: CoursesCubit.instance.listOfCourses[index],
                          course: '4 ${tr.lesson}',
                          hour: tr.hour,
                          duration: tr.duration,
                          month: 'شهرين',
                          daysOfWeek: 'يومين في الاسبوع',
                          icon: IconsResources.clock,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(height: 16.h),
                  ),
                if (CoursesCubit.instance.currentIndex == 1)
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: CoursesCubit.instance.listOfCoursesComplete.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          CoursesCubit.instance.selectDay2(index);
                        },
                        child: CustomMyCardCapabilities(
                          isCourse: true,
                          isGradient: CoursesCubit.instance.currentDay2 == index
                              ? true
                              : false,
                          title: CoursesCubit.instance.listOfCoursesComplete[index],
                          course: '4 ${tr.lesson}',
                          hour: tr.hour,
                          duration: tr.duration,
                          month: 'شهرين',
                          daysOfWeek: 'يومين في الاسبوع',
                          icon: IconsResources.clock,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(height: 16.h),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
