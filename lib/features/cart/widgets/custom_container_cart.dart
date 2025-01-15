import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomContainerCart extends StatelessWidget {
  const CustomContainerCart({
    super.key,
    required this.title,
    this.isColor = false,
    this.isBlueButton = false,
  });
  final String title;
  final bool isColor;
  final bool isBlueButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: isColor
            ? ColorResources.blackColor.withOpacity(0.05)
            : isBlueButton
                ? ColorResources.primaryColor
                : ColorResources.blackColor.withOpacity(0.10),
      ),
      child: Text(
        title,
        style: isColor
            ? AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 19.36.sp,
                appFontWeight: FontWeight.w500,
                color: ColorResources.blackColor.withOpacity(0.50),
              )
            : isBlueButton
                ? AppTextStyle.textStyle(
                    appFontSize: 16.sp,
                    appFontHeight: 19.36.sp,
                    appFontWeight: FontWeight.w500,
                    color: ColorResources.whiteColor,
                  )
                : AppTextStyle.textStyle(
                    appFontSize: 20.sp,
                    appFontHeight: 24.2.sp,
                    appFontWeight: FontWeight.w700,
                    color: ColorResources.greenColor,
                  ),
      ),
    );
  }
}
