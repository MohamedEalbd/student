import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

class CustomDropListAddCourse extends StatelessWidget {
  const CustomDropListAddCourse({
    super.key,
    this.controller,
    this.initialValue,
    this.hintText,
    this.onChanged,
    this.onTap,
    this.items,
    this.isMine = false,
    this.labelText,
    this.isAddText = false,
  });
  final dynamic controller;
  final dynamic initialValue;
  final String? hintText;
  final void Function(dynamic)? onChanged;
  final void Function()? onTap;
  final List<String>? items;
  final bool isMine;
  final bool isAddText;
  final String? labelText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 32.h,
        width: isMine ? 117.w : null,
        child: DropDownTextField(
          textStyle: AppTextStyle.textStyle(
            appFontSize: 10.sp,
            appFontHeight: 12.6.sp,
            appFontWeight: FontWeight.w500,
            color: isAddText
                ? ColorResources.whiteColor
                : ColorResources.blackColor,
          ),
          clearOption: false,
          dropDownIconProperty: IconProperty(color: Colors.transparent),
          padding: isMine
              ? EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 4.h,
                )
              : EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 8.h,
                ),
          textFieldDecoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            hintStyle: AppTextStyle.textStyle(
              appFontSize: 10.sp,
              appFontHeight: 12.6.sp,
              appFontWeight: FontWeight.w500,
              color: isAddText
                  ? ColorResources.whiteColor
                  : ColorResources.blackColor,
            ),
            labelStyle: AppTextStyle.textStyle(
              isPlusJakartaSans: true,
              appFontSize: 10.sp,
              appFontHeight: 12.6.sp,
              appFontWeight: FontWeight.w500,
              color: isAddText
                  ? ColorResources.whiteColor
                  : ColorResources.blackColor,
            ),
            prefixIcon: Image.asset(
              ImageResources.arrowDown,
              height: 16.h,
              width: 16.w,
              color: isAddText ? ColorResources.whiteColor : null,
            ),
            fillColor: isAddText
                ? ColorResources.whiteColor.withOpacity(0.10)
                : ColorResources.whiteColor,
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 30.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: ColorResources.greenColor.withOpacity(0.05),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: ColorResources.greenColor.withOpacity(0.05),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: ColorResources.greenColor.withOpacity(0.05),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: ColorResources.greenColor.withOpacity(0.05),
              ),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return "Required field";
            } else {
              return null;
            }
          },
          initialValue: initialValue,
          onChanged: onChanged,
          dropDownList: [
            ...List.generate(items!.length, (index) {
              return DropDownValueModel(
                name: items![index],
                value: "$index",
              );
            }),
          ],
        ),
      ),
    );
  }
}
