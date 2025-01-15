import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/extentions/navigations.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/image_resources.dart';
class CustomCardDetailsProfile extends StatelessWidget {
  const CustomCardDetailsProfile(
      {super.key, required this.name, required this.image});
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Container(
      height: 264.h,
      // width: 390.w,
      constraints: BoxConstraints(
        maxWidth: ResponsiveScreen.width,
        minWidth: ResponsiveScreen.width,
      ),
      decoration: BoxDecoration(
        color: ColorResources.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: ClipRRect(
                      child: Image.asset(
                        ImageResources.arrowRight,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ),
                  SizedBox(width: 107.w),
                  Text(
                    "التفاصيل",
                    style: AppTextStyle.textStyle(
                      appFontSize: 20.sp,
                      appFontHeight: 24.2.sp,
                      appFontWeight: FontWeight.w600,
                      color: ColorResources.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Image.asset(image),
          SizedBox(height: 8.h),
          Text(
            name,
            style: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontHeight: 20.16.sp,
              appFontWeight: FontWeight.w600,
              color: ColorResources.whiteColor,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            'bakrtaha505@gmail.com',
            style: AppTextStyle.textStyle(
              appFontSize: 14.sp,
              appFontHeight: 17.64.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
