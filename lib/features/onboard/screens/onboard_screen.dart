import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/core/routes/routes.dart';
import 'package:student/features/onboard/cubit/onboard_cubit.dart';
import 'package:student/features/onboard/widgets/custom_button.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/extentions/navigations.dart';
import 'package:student/shared/resources/color_resources.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return BlocConsumer<OnboardCubit, OnboardState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: PageView.builder(
              onPageChanged: (page) {
                OnboardCubit.instance.changeIndex(page);
              },
              physics: NeverScrollableScrollPhysics(),
              itemCount: OnboardCubit.instance.onBoarding.length,
              controller: OnboardCubit.instance.controller,
              itemBuilder: (context, index) {
                return Container(
                  alignment: OnboardCubit.instance.currentIndex == 2
                      ? Alignment.bottomCenter
                      : Alignment.bottomLeft,
                  padding: OnboardCubit.instance.currentIndex == 2
                      ? EdgeInsets.only(bottom: 50.h)
                      : EdgeInsets.zero,
                  constraints: BoxConstraints(
                    maxWidth: ResponsiveScreen.width,
                    maxHeight: ResponsiveScreen.height,
                    minHeight: ResponsiveScreen.height,
                    minWidth: ResponsiveScreen.width,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          OnboardCubit.instance.onBoarding[index].image),
                    ),
                  ),
                  child: OnboardCubit.instance.currentIndex == 2
                      ? SizedBox(
                          height: 160.h,
                          width: 342.w,
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: OnboardCubit.instance.words.length,
                            itemBuilder: (context, index) {
                              return CustomButton(
                                onTap: () {
                                  OnboardCubit.instance.selectRole(index);
                                  if (OnboardCubit.instance.selectType == 0) {
                                    context.pushReplacementNamed(Routes.login);
                                  } else {
                                    context.pushReplacementNamed(Routes.login);
                                  }
                                },
                                title: OnboardCubit.instance.words[index]
                                    ['title'],
                                image: OnboardCubit.instance.words[index]
                                    ['imageUrl'],
                                colorContainer:
                                    OnboardCubit.instance.selectType == index
                                        ? ColorResources.primaryColor
                                        : Colors.transparent,
                                colorText:
                                    OnboardCubit.instance.selectType == index
                                        ? ColorResources.whiteColor
                                        : ColorResources.primaryColor,
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                              height: 16.h,
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            OnboardCubit.instance.nextPage();
                          },
                          child: Container(
                            height: 83.h,
                            width: 87.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.w, vertical: 32.h),
                            decoration: BoxDecoration(
                              color: ColorResources.primaryColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50.r)),
                            ),
                            child: Text(
                              tr.next,
                              style: AppTextStyle.textStyle(
                                appFontSize: 16.sp,
                                appFontHeight: 19.36.sp,
                                appFontWeight: FontWeight.w600,
                                color: ColorResources.whiteColor,
                              ),
                            ),
                          ),
                        ),
                );
              }),
        );
      },
    );
  }
}
