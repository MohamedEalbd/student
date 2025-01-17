import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/courses/models/lecturers_model.dart';
import 'package:student/features/courses/widgets/custom_button_dailog.dart';
import 'package:student/features/courses/widgets/custom_radio.dart';
import 'package:student/features/courses/widgets/custom_row_live.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/resources/image_resources.dart';
import 'package:student/shared/widgets/liner_precent_indecator.dart';

class Lecturers extends StatelessWidget {
  const Lecturers({
    super.key,
    required this.model,
    this.number,
  });
  final MyLecturersModel model;
  final int? number;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Container(
                  height: 510.h,
                  width: 342.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: ColorResources.whiteColor,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        ImageResources.liveCourse,
                        height: 328.h,
                        width: 310.w,
                      ),
                      SizedBox(height: 8.h),
                      CustomRowLive(
                        title: tr.theLectures,
                        subTitle: '2',
                      ),
                      SizedBox(height: 8.h),
                      CustomRowLive(
                        title: tr.theLesson,
                        subTitle: tr.theoretical,
                      ),
                      SizedBox(height: 8.h),
                      MaterialButton(
                        color: Color(0xFFD22D2D),
                        height: 33.h,
                        minWidth: 310.w,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        onPressed: () {},
                        child: Text(
                          tr.next,
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 16.94.sp,
                            appFontWeight: FontWeight.w600,
                            color: ColorResources.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: model.isLogin
              ? ColorResources.primaryColor
              : ColorResources.blackColor.withOpacity(0.05),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              IconsResources.video,
              color: model.isLogin
                  ? ColorResources.whiteColor
                  : ColorResources.primaryColor,
            ),
            SizedBox(width: 8.w),
            Text(
              "${tr.lectures} ${model.numberLecturers}",
              style: AppTextStyle.textStyle(
                appFontSize: 14.sp,
                appFontHeight: 16.94.sp,
                appFontWeight: FontWeight.w500,
                color: model.isLogin
                    ? ColorResources.whiteColor
                    : ColorResources.blackColor.withOpacity(0.50),
              ),
            ),
            model.isLogin ? SizedBox(width: 8.w) : Spacer(),
            model.isLogin
                ? CustomLinerPercentIndicator(
                    percent: model.percent!,
                    width: 190.w,
                    barRadius: Radius.circular(10.r),
                    progressColor: ColorResources.whiteColor,
                    backgroundColor: const Color.fromARGB(255, 1, 62, 108),
                    lineHeight: 20.h,
                    center: Text(
                      "${tr.completed} ${model.percent}%",
                      style: AppTextStyle.textStyle(
                        appFontSize: 14.sp,
                        appFontHeight: 16.94.sp,
                        appFontWeight: FontWeight.w500,
                        color: ColorResources.primaryColor,
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: Container(
                                height: 470.h,
                                width: 342.w,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.w,
                                  vertical: 16.h,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorResources.whiteColor,
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.w,
                                        vertical: 8.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorResources.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "مدة الاختبار",
                                            style: AppTextStyle.textStyle(
                                              appFontSize: 14.sp,
                                              appFontHeight: 16.94.sp,
                                              appFontWeight: FontWeight.w500,
                                              color: ColorResources.whiteColor,
                                            ),
                                          ),
                                          SizedBox(width: 16.w),
                                          Text(
                                            tr.remaining,
                                            style: AppTextStyle.textStyle(
                                              appFontSize: 10.sp,
                                              appFontHeight: 12.1.sp,
                                              appFontWeight: FontWeight.w500,
                                              color: ColorResources.whiteColor,
                                            ),
                                          ),
                                          SizedBox(width: 4.w),
                                          Container(
                                            height: 17.h,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.w),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              color: ColorResources.whiteColor
                                                  .withOpacity(0.10),
                                            ),
                                            child: Text(
                                              "15:01 / 1:00:00",
                                              style: AppTextStyle.textStyle(
                                                appFontSize: 10.sp,
                                                appFontHeight: 12.1.sp,
                                                appFontWeight: FontWeight.w500,
                                                color:
                                                    ColorResources.whiteColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 16.w),
                                          SvgPicture.asset(
                                            IconsResources.clock,
                                            height: 12.h,
                                            width: 12.w,
                                            color: ColorResources.whiteColor
                                                .withOpacity(0.50),
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            tr.hour,
                                            style: AppTextStyle.textStyle(
                                              appFontSize: 12.sp,
                                              appFontHeight: 14.52.sp,
                                              appFontWeight: FontWeight.w500,
                                              color: ColorResources.whiteColor
                                                  .withOpacity(0.50),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 16.h),
                                    Text(
                                      "السؤال الاول",
                                      style: AppTextStyle.textStyle(
                                        appFontSize: 20.sp,
                                        appFontHeight: 25.2.sp,
                                        appFontWeight: FontWeight.w600,
                                        color: ColorResources.primaryColor,
                                      ),
                                    ),
                                    //SizedBox(height: 14.h),
                                    Image.asset(
                                      ImageResources.content,
                                      height: 256.h,
                                      width: 310.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomRadio(title: 'A'),
                                        CustomRadio(title: 'B'),
                                        CustomRadio(title: 'C'),
                                        CustomRadio(title: 'D'),
                                      ],
                                    ),
                                    SizedBox(height: 16.h),
                                    MaterialButton(
                                      color: ColorResources.primaryColor,
                                      height: 33.h,
                                      minWidth: 310.w,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.r),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        tr.next,
                                        style: AppTextStyle.textStyle(
                                          appFontSize: 14.sp,
                                          appFontHeight: 16.94.sp,
                                          appFontWeight: FontWeight.w600,
                                          color: ColorResources.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: ColorResources.primaryColor,
                      ),
                      child: Text(
                        tr.entrance,
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontHeight: 16.94.sp,
                          appFontWeight: FontWeight.w500,
                          color: ColorResources.whiteColor,
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
