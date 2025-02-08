import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/cart/cubit/cart_cubit.dart';
import 'package:student/features/cart/widgets/list_of_my_courses.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/widgets/leading_app_bar.dart';
import 'package:student/shared/widgets/titleAppBar.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TitleAppBar(title: tr.cart),
        leading: LeadingAppBar(),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SvgPicture.asset(IconsResources.delete),
          )
        ],
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            itemBuilder: (context, index) {
              return ListOfMyCourses(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: ColorResources.whiteColor,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 8.w, right: 8.w, top: 32.h, bottom: 32.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 24.h,
                              children: [
                                Text(
                                  "لي اتمام عملية الاشتراك  يرجى الذهاب الى الموقع لي اكمال عملية الدفع واتمام الاشتراك لي استخراج كود الاشتراك",
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 20.sp,
                                    color: ColorResources.blackColor
                                        .withOpacity(0.60),
                                    appFontWeight: FontWeight.w600,
                                    appFontHeight: 24.2.sp,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    CartCubit.instance.complete();
                                  },
                                  child: Container(
                                    width: 132.w,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 48.w,
                                      vertical: 8.h,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: ColorResources.greenColor,
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    child: Text(
                                      tr.complete,
                                      style: AppTextStyle.textStyle(
                                        appFontSize: 16.sp,
                                        appFontHeight: 20.16.sp,
                                        appFontWeight: FontWeight.w500,
                                        isPlusJakartaSans: true,
                                        color: ColorResources.whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                title: CartCubit.instance.words[index],
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemCount: CartCubit.instance.words.length,
          );
        },
      ),
    );
  }
}
