import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/core/routes/routes.dart';
import 'package:student/features/profile/widgets/details/select_title_to_details.dart';
import 'package:student/features/subscribe_to_the_course/cubit/subscribe_course_cubit.dart';
import 'package:student/features/subscribe_to_the_course/widgets/about_courses.dart';
import 'package:student/features/subscribe_to_the_course/widgets/about_teacher.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/extentions/navigations.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/resources/image_resources.dart';
import 'package:student/shared/widgets/custom_card_dailog.dart';
import 'package:student/shared/widgets/custom_container_display_students_or_degree.dart';
import 'package:student/shared/widgets/leading_app_bar.dart';
import 'package:student/shared/widgets/titleAppBar.dart';

class DetailsTeacherScreen extends StatelessWidget {
  const DetailsTeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscribeCourseCubit, SubscribeCourseState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: SubscribeCourseCubit.instance.currentIndexWords == 1
                ? Colors.transparent
                : ColorResources.whiteColor,
            height: 104.h,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: ColorResources.blackColor.withOpacity(0.10),
                  ),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  if (SubscribeCourseCubit.instance.isAddToCart) {
                    context.pushNamed(Routes.myCartScreen);
                  } else {
                    SubscribeCourseCubit.instance.addToCart();
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  margin: EdgeInsets.only(top: 24.h),
                  decoration: BoxDecoration(
                    color: SubscribeCourseCubit.instance.isAddToCart
                        ? ColorResources.primaryColor
                        : ColorResources.greenColor,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Row(
                    mainAxisAlignment: SubscribeCourseCubit.instance.isAddToCart
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      SubscribeCourseCubit.instance.isAddToCart
                          ? SvgPicture.asset(
                              IconsResources.myCart,
                              height: 24.h,
                              width: 24.w,
                              color: ColorResources.whiteColor,
                            )
                          : SvgPicture.asset(
                              IconsResources.cart,
                              height: 24.h,
                              width: 24.w,
                              color: ColorResources.whiteColor,
                            ),
                      SizedBox(width: 8.w),
                      SubscribeCourseCubit.instance.isAddToCart
                          ? Text(
                              "اكمل عملية الاشتراك",
                              style: AppTextStyle.textStyle(
                                appFontSize: 14.sp,
                                appFontHeight: 16.94.sp,
                                appFontWeight: FontWeight.w600,
                                color: ColorResources.whiteColor,
                              ),
                            )
                          : Text(
                              "اضف الى السلة",
                              style: AppTextStyle.textStyle(
                                appFontSize: 14.sp,
                                appFontHeight: 16.94.sp,
                                appFontWeight: FontWeight.w600,
                                color: ColorResources.whiteColor,
                              ),
                            ),
                      if (!SubscribeCourseCubit.instance.isAddToCart) Spacer(),
                      if (!SubscribeCourseCubit.instance.isAddToCart)
                        Text(
                          "250 ر.س",
                          style: AppTextStyle.textStyle(
                            appFontSize: 20.sp,
                            appFontHeight: 25.2.sp,
                            appFontWeight: FontWeight.w600,
                            color: ColorResources.whiteColor,
                            isPlusJakartaSans: true,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 264.h),
            child: AppBar(
              backgroundColor: ColorResources.primaryColor,
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.r),
                  bottomRight: Radius.circular(50.r),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size(double.infinity, 264.h),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 59.h),
                  child: Column(
                    spacing: 8.h,
                    children: [
                      Image.asset(ImageResources.profile),
                      Text(
                        "احمد ابو العزم",
                        style: AppTextStyle.textStyle(
                          appFontSize: 20.sp,
                          appFontHeight: 25.2.sp,
                          appFontWeight: FontWeight.w600,
                          color: ColorResources.whiteColor,
                          isPlusJakartaSans: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              leading: LeadingAppBar(color: ColorResources.whiteColor),
              title: TitleAppBar(title: tr.details, isProfile: true),
              actions: [
                SubscribeCourseCubit.instance.isAddToCart
                    ? Padding(
                        padding: isArabic
                            ? EdgeInsets.only(left: 20.w)
                            : EdgeInsets.only(right: 20.w),
                        child: Container(
                          color: ColorResources.whiteColor,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                            vertical: 4.h,
                          ),
                          child: SvgPicture.asset(
                            IconsResources.cart,
                            height: 24.h,
                            width: 24.w,
                            color: ColorResources.primaryColor,
                          ),
                        ),
                      )
                    : Padding(
                        padding: isArabic
                            ? EdgeInsets.only(left: 20.w)
                            : EdgeInsets.only(right: 20.w),
                        child: SvgPicture.asset(
                          IconsResources.cart,
                          height: 24.h,
                          width: 24.w,
                          color: ColorResources.whiteColor,
                        ),
                      ),
              ],
            ),
          ),
          body: BlocBuilder<SubscribeCourseCubit, SubscribeCourseState>(
            builder: (context, state) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 22.w),
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 24.h),
                        child: CustomCardDialog(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomContainerDisplayStudentsOrDegree(
                                  child: Row(
                                    children: [
                                      ...List.generate(
                                          SubscribeCourseCubit
                                              .instance.words.length, (index) {
                                        return SelectTitleToDetails(
                                          currentIndex: SubscribeCourseCubit
                                              .instance.currentIndexWords,
                                          onTap: () {
                                            SubscribeCourseCubit.instance
                                                .selectAboutTeacherOrCourses(
                                                    index);
                                          },
                                          title: SubscribeCourseCubit
                                              .instance.words[index]['title'],
                                          image: SubscribeCourseCubit.instance
                                              .words[index]['imageUrl'],
                                          colorContainer: SubscribeCourseCubit
                                                      .instance
                                                      .currentIndexWords ==
                                                  index
                                              ? ColorResources.primaryColor
                                              : ColorResources.whiteColor,
                                          colorText: SubscribeCourseCubit
                                                      .instance
                                                      .currentIndexWords ==
                                                  index
                                              ? ColorResources.whiteColor
                                              : ColorResources.primaryColor,
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                if (SubscribeCourseCubit
                                        .instance.currentIndexWords ==
                                    0)
                                  AboutTeacher(),
                                if (SubscribeCourseCubit
                                        .instance.currentIndexWords ==
                                    1)
                                  AboutCourses(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
