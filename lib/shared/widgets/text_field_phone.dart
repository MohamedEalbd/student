import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';

class PhoneNumberInput extends StatelessWidget {
  final String hintText;

  const PhoneNumberInput({super.key, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: 56.h,
      child: IntlPhoneField(
        readOnly: true,
        pickerDialogStyle: PickerDialogStyle(
          padding: EdgeInsets.zero,
        ),
        disableLengthCheck: true,
        dropdownTextStyle: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 19.36.sp,
          appFontWeight: FontWeight.w400,
          color: ColorResources.blackColor.withOpacity(
            0.25,
          ),
        ),
        style: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 19.36.sp,
          appFontWeight: FontWeight.w400,
          color: ColorResources.blackColor.withOpacity(
            0.25,
          ),
        ),
        decoration: InputDecoration(
          fillColor: ColorResources.whiteColor,
          filled: true,
          labelText: hintText,
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
          errorBorder: OutlineInputBorder(
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
        ),
        initialCountryCode: 'EG',
        onChanged: (phone) {
          print(phone.completeNumber); // Prints full phone number
        },
      ),
    );
  }
}
