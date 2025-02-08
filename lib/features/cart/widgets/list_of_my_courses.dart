import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/cart/cubit/cart_cubit.dart';
import 'package:student/features/cart/widgets/custom_container_cart.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

class ListOfMyCourses extends StatelessWidget {
  const ListOfMyCourses({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            //margin: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tr.numberOfCourses,
                      style: AppTextStyle.textStyle(
                        appFontSize: 16.sp,
                        appFontHeight: 19.36.sp,
                        appFontWeight: FontWeight.w500,
                        color: ColorResources.blackColor,
                      ),
                    ),
                    Text(
                      "(2)",
                      style: AppTextStyle.textStyle(
                        appFontSize: 14.sp,
                        appFontHeight: 16.94.sp,
                        appFontWeight: FontWeight.w500,
                        color: ColorResources.blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    border: Border.all(
                      color: ColorResources.primaryColor,
                      width: 1.w,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(ImageResources.profile),
                          SizedBox(width: 16.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "احمد ابو العزم",
                                style: AppTextStyle.textStyle(
                                  isPlusJakartaSans: true,
                                  appFontSize: 20.sp,
                                  appFontHeight: 25.2.sp,
                                  appFontWeight: FontWeight.w600,
                                  color: ColorResources.blackColor,
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
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color:
                                  ColorResources.primaryColor.withOpacity(0.10),
                            ),
                            child: Text(
                              title,
                              style: AppTextStyle.textStyle(
                                appFontSize: 16.sp,
                                appFontHeight: 20.16.sp,
                                appFontWeight: FontWeight.w500,
                                color:
                                    ColorResources.blackColor.withOpacity(0.60),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      CustomContainerCart(title: "250 ر.س"),
                      SizedBox(height: 16.h),
                      CustomContainerCart(
                        title: CartCubit.instance.isComplete
                            ? "d5hy8d"
                            : tr.enterTheCode,
                        isColor: true,
                      ),
                      SizedBox(height: 8.h),
                      CustomContainerCart(
                        title: tr.completeTheSubscriptionProcess,
                        isBlueButton: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
