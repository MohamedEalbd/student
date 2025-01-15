import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/profile/cubit/profile_cubit.dart';
import 'package:student/features/profile/widgets/details/display_answers_widget.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/widgets/liner_precent_indecator.dart';

class CustomContainerDisplayDegrees extends StatelessWidget {
  const CustomContainerDisplayDegrees({super.key});

  @override
  Widget build(BuildContext context) {
    print(ProfileCubit.instance.exams);
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ProfileCubit.instance.exams.length,
            itemBuilder: (context, index) => Container(
              height: ProfileCubit.instance.displayAnswer == index &&
                      ProfileCubit.instance.isClickOnArrowDown
                  ? 556.h
                  : 120.h,
              width: 310.w,
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  width: 1.w,
                  color: ColorResources.primaryColor,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(IconsResources.test),
                      SizedBox(width: 8.w),
                      Text(
                        ProfileCubit.instance.exams[index].name,
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontHeight: 16.94.sp,
                          appFontWeight: FontWeight.w600,
                          color: ColorResources.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  CustomLinerPercentIndicator(percent: 0.8),
                  SizedBox(height: 6.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "65%",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontHeight: 12.6.sp,
                          appFontWeight: FontWeight.w500,
                          color: ColorResources.greenColor,
                        ),
                      ),
                      Text(
                        '100% من',
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontHeight: 12.6.sp,
                          appFontWeight: FontWeight.w500,
                          color: ColorResources.greenColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr.answers,
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontHeight: 16.94.sp,
                          appFontWeight: FontWeight.w600,
                          color: ColorResources.primaryColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //ProfileCubit.instance.changeIndex(index);
                          ProfileCubit.instance.displayAnswers(index);
                        },
                        child: isArabic
                            ? SvgPicture.asset(
                                ProfileCubit.instance.displayAnswer == index &&
                                        ProfileCubit.instance.isClickOnArrowDown
                                    ? IconsResources.arrowDown2
                                    : IconsResources.arrowLeft,
                              )
                            : SvgPicture.asset(
                                ProfileCubit.instance.displayAnswer == index &&
                                        ProfileCubit.instance.isClickOnArrowDown
                                    ? IconsResources.arrowDown2
                                    : IconsResources.arrowRight,
                                color: ColorResources.primaryColor,
                              ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.h),
                  if (ProfileCubit.instance.displayAnswer == index &&
                      ProfileCubit.instance.isClickOnArrowDown)
                    DisplayAnswersWidget(
                      answers: ProfileCubit.instance.exams[index].answers,
                    ),
                ],
              ),
            ),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 16.h),
          ),
        );
      },
    );
  }
}
