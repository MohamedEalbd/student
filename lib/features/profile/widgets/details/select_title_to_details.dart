import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/shared/classes/text_style.dart';

class SelectTitleToDetails extends StatelessWidget {
  const SelectTitleToDetails({
    super.key,
    required this.title,
     this.image ='',
    required this.colorContainer,
    required this.colorText,
    this.onTap,
    required this.currentIndex,
  });
  final String title;
  final String image;
  final Color colorContainer;
  final Color colorText;
  final void Function()? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 170.w,
        decoration: isArabic
            ? BoxDecoration(
                color: colorContainer,
                borderRadius: currentIndex == 0
                    ? BorderRadius.only(
                        topRight: Radius.circular(25.r),
                        bottomRight: Radius.circular(25.r),
                      )
                    : BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        bottomLeft: Radius.circular(25.r),
                      ),
              )
            : BoxDecoration(
                color: colorContainer,
                borderRadius: currentIndex == 0
                    ? BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        bottomLeft: Radius.circular(25.r),
                      )
                    : BorderRadius.only(
                        topRight: Radius.circular(25.r),
                        bottomRight: Radius.circular(25.r),
                      ),
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(image.isNotEmpty)
            SvgPicture.asset(
              image,
              color: colorText,
            ),
            SizedBox(width: 8.w),
            Text(
              title,
              style: AppTextStyle.textStyle(
                appFontSize: 14.sp,
                appFontHeight: 16.94.sp,
                appFontWeight: FontWeight.w600,
                color: colorText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
