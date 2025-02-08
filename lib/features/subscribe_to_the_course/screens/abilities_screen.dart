import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/core/routes/routes.dart';
import 'package:student/features/lecturers/widgets/custom_search_text_field.dart';
import 'package:student/features/lecturers/widgets/custom_title_lecturers.dart';
import 'package:student/features/subscribe_to_the_course/cubit/subscribe_course_cubit.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/extentions/navigations.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/widgets/custom_drop_list.dart';
import 'package:student/shared/widgets/leading_app_bar.dart';
import 'package:student/shared/widgets/titleAppBar.dart';

class AbilitiesScreen extends StatelessWidget {
  const AbilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: LeadingAppBar(),
        title: TitleAppBar(title: tr.abilities),
      ),
      body: BlocBuilder<SubscribeCourseCubit, SubscribeCourseState>(
          builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(
            left: 24.w,
            right: 24.w,
            bottom: 10.h,
          ),
          child: Column(
            children: [
              CustomSearchTextField(hintText: tr.search),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTitleLecturers(title: tr.lecturers),
                  Spacer(),
                  Row(
                    spacing: 16.w,
                    children: [
                      CustomDropList(
                        value: SubscribeCourseCubit.instance.value,
                        valueChanged: (value) {
                          SubscribeCourseCubit.instance.fetchLecturers(value);
                        },
                        list: [
                          'Card1',
                          tr.materials,
                        ],
                      ),
                      CustomDropList(
                        value: SubscribeCourseCubit.instance.value2,
                        valueChanged: (value) {
                          SubscribeCourseCubit.instance.fetchLecturers2(value);
                        },
                        list: [
                          'Card2',
                          tr.organization,
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        SubscribeCourseCubit.instance.selectCard(index);
                        context.pushNamed(Routes.detailsTeacherScreen);
                      },
                      child: Container(
                        width: 342.w,
                        padding: EdgeInsets.only(
                          top: 8.h,
                          right: 8.w,
                          bottom: 8.h,
                          left: 16.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: SubscribeCourseCubit.instance.currentIndex ==
                                  index
                              ? ColorResources.primaryColor
                              : ColorResources.whiteColor,
                          border: Border.all(
                            color: ColorResources.primaryColor,
                            width: 1.5.w,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(SubscribeCourseCubit
                                .instance.lecturers[index].image),
                            SizedBox(width: 16.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  SubscribeCourseCubit
                                      .instance.lecturers[index].name,
                                  style: AppTextStyle.textStyle(
                                    isPlusJakartaSans: true,
                                    appFontSize: 20.sp,
                                    appFontHeight: 25.2.sp,
                                    appFontWeight: FontWeight.w600,
                                    color: SubscribeCourseCubit
                                                .instance.currentIndex ==
                                            index
                                        ? ColorResources.whiteColor
                                        : ColorResources.blackColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    ...List.generate(5, (index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      );
                                    })
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  spacing: 8.w,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 4.h),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: SubscribeCourseCubit
                                                    .instance.currentIndex ==
                                                index
                                            ? ColorResources.whiteColor
                                                .withOpacity(0.10)
                                            : ColorResources.primaryColor
                                                .withOpacity(0.10),
                                      ),
                                      child: Text(
                                        '${SubscribeCourseCubit.instance.lecturers[index].numbersOfLectures} ${tr.lectures}',
                                        style: AppTextStyle.textStyle(
                                          appFontSize: 16.sp,
                                          appFontHeight: 20.16.sp,
                                          appFontWeight: FontWeight.w500,
                                          color: SubscribeCourseCubit
                                                      .instance.currentIndex ==
                                                  index
                                              ? ColorResources.whiteColor
                                                  .withOpacity(0.60)
                                              : ColorResources.blackColor
                                                  .withOpacity(0.60),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 4.h),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: SubscribeCourseCubit
                                                    .instance.currentIndex ==
                                                index
                                            ? ColorResources.whiteColor
                                                .withOpacity(0.10)
                                            : ColorResources.primaryColor
                                                .withOpacity(0.10),
                                      ),
                                      child: Text(
                                        tr.hour,
                                        style: AppTextStyle.textStyle(
                                          appFontSize: 16.sp,
                                          appFontHeight: 20.16.sp,
                                          appFontWeight: FontWeight.w500,
                                          color: SubscribeCourseCubit
                                                      .instance.currentIndex ==
                                                  index
                                              ? ColorResources.whiteColor
                                                  .withOpacity(0.60)
                                              : ColorResources.blackColor
                                                  .withOpacity(0.60),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            isArabic
                                ? SvgPicture.asset(
                                    IconsResources.arrowLeft,
                                    color: SubscribeCourseCubit
                                                .instance.currentIndex ==
                                            index
                                        ? ColorResources.whiteColor
                                        : ColorResources.primaryColor,
                                  )
                                : SvgPicture.asset(
                                    IconsResources.arrowRight,
                                    color: SubscribeCourseCubit
                                                .instance.currentIndex ==
                                            index
                                        ? ColorResources.whiteColor
                                        : ColorResources.primaryColor,
                                  ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: SubscribeCourseCubit.instance.lecturers.length,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
