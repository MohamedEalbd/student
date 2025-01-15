// ignore_for_file: deprecated_member_use

import 'package:dropdown_textfield/dropdown_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

List<String> models = [
  '2020',
  '2021',
  '2022',
  '2023',
  '2023',
  '2019',
];

class CustomDropDownTextField extends StatelessWidget {
  final dynamic controller;
  final dynamic initialValue;
  final String? hintText;
  final void Function(dynamic)? onChanged;
  final void Function()? onTap;
  final List<String>? items;
  final bool isAddCourse;
  const CustomDropDownTextField({
    super.key,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.hintText,
    this.onTap,
    this.items,
    this.isAddCourse = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(),
        height: 56.h,
        child: DropDownTextField(
          clearOption: false,
          dropDownIconProperty: IconProperty(color: Colors.transparent),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          textStyle: AppTextStyle.textStyle(
            appFontSize: 16.sp,
            appFontHeight: 19.36.sp,
            appFontWeight: FontWeight.w400,
            color: ColorResources.blackColor.withOpacity(
              0.25,
            ),
          ),
          initialValue: initialValue,
          controller: controller,
          clearIconProperty: IconProperty(color: Colors.green),
          searchTextStyle: const TextStyle(color: Colors.red),
          textFieldDecoration: InputDecoration(
            fillColor: ColorResources.whiteColor,
            filled: true,
            hintStyle: isAddCourse
                ? AppTextStyle.textStyle(
                    isPlusJakartaSans: true,
                    appFontSize: 10.sp,
                    appFontHeight: 12.6.sp,
                    appFontWeight: FontWeight.w500,
                    color: ColorResources.blackColor,
                  )
                : AppTextStyle.textStyle(
                    appFontSize: 16.sp,
                    appFontHeight: 19.36.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.blackColor.withOpacity(
                      0.25,
                    ),
                  ),
            suffixIcon: SizedBox(),
            prefixIcon: Image.asset(
              ImageResources.arrowDown,
              height: 16.h,
              width: 16.w,
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorResources.blackColor.withOpacity(0.10),
                width: 1.w,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorResources.blackColor.withOpacity(0.10),
                width: 1.w,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorResources.blackColor.withOpacity(0.10),
                width: 1.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorResources.blackColor.withOpacity(0.10),
                width: 1.w,
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
          dropDownItemCount: items!.length,
          dropDownList: [
            ...List.generate(items!.length, (index) {
              return DropDownValueModel(
                name: items![index],
                value: "$index",
              );
            })
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
