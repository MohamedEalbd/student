import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, this.hintText});
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: 342.w,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: ColorResources.blackColor.withOpacity(0.50),
            ),
          ),
          hintText: hintText,
          hintStyle: AppTextStyle.textStyle(
            appFontSize: 16.sp,
            appFontHeight: 19.36.sp,
            appFontWeight: FontWeight.w400,
            color: ColorResources.blackColor.withOpacity(0.50),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
