import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/features/lecturers/models/answers_model.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class DisplayAnswersWidget extends StatelessWidget {
  const DisplayAnswersWidget({super.key, required this.answers});
  final List<AnswersModel> answers;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: answers.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorResources.blackColor.withOpacity(0.10),
                  width: 1.w,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  answers[index].name,
                  style: AppTextStyle.textStyle(
                    appFontSize: 12.sp,
                    appFontHeight: 14.52.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.blackColor,
                  ),
                ),
                Container(
                  height: 24.w,
                  width: 24.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Color(0xff3C7098),
                  ),
                  child: Text(
                    answers[index].type,
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontHeight: 12.1.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.whiteColor,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  answers[index].mark,
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(height: 8.h),
      ),
    );
  }
}
