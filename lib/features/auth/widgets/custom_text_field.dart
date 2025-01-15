import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.obscureText,
    this.suffixIconOnTap,
    this.suffixIcon,
  });
  final String hintText;
  final String? prefixIcon;
  final TextEditingController? controller;
  final bool? obscureText;
  final void Function()? suffixIconOnTap;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? true : false,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            //highlightColor: AppColors.blueGrey,
            onPressed: suffixIconOnTap,
            icon: Icon(
              suffixIcon,
              color: ColorResources.blackColor.withOpacity(0.50),
            ),
          ),
          contentPadding: prefixIcon == null
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(horizontal: 16.w),
          prefixIcon: prefixIcon != null
              ? Image.asset(
                  '$prefixIcon',
                  height: 24,
                  width: 24,
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                ),
          hintText: hintText,
          hintStyle: AppTextStyle.textStyle(
            appFontSize: 16.sp,
            appFontHeight: 19.36.sp,
            appFontWeight: FontWeight.w400,
            color: ColorResources.blackColor.withOpacity(
              0.25,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.blackColor.withOpacity(0.10),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.blackColor.withOpacity(0.10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.blackColor.withOpacity(0.10),
            ),
          ),
          fillColor: ColorResources.whiteColor,
          filled: true,
        ),
      ),
    );
  }
}
