import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/core/routes/routes.dart';
import 'package:student/features/auth/cubit/auth_cubit.dart';
import 'package:student/features/auth/widgets/custom_icons.dart';
import 'package:student/features/auth/widgets/custom_text_field.dart';
import 'package:student/features/auth/widgets/custom_title_login.dart';
import 'package:student/features/onboard/widgets/custom_button.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/extentions/navigations.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/resources/image_resources.dart';
import 'package:student/shared/widgets/drop_down_text_field.dart';
import 'package:student/shared/widgets/text_field_phone.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            height: ResponsiveScreen.height,
            width: ResponsiveScreen.width,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageResources.onboard),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTitleLogin(title: tr.theLogin),
                  SizedBox(height: 40.h),
                  CustomTextField(
                    hintText: tr.enterName,
                    obscureText: true,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    hintText: tr.email,
                    obscureText: true,
                  ),
                  SizedBox(height: 16.h),
                  PhoneNumberInput(hintText: tr.enterPhoneNumber),
                  SizedBox(height: 16.h),
                  CustomDropDownTextField(
                    hintText: tr.enterDateOfBirth,
                    items: [tr.male, tr.female],
                  ),
                  SizedBox(height: 16.h),
                  CustomDropDownTextField(
                    hintText: tr.gender,
                    items: [tr.male, tr.female],
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    obscureText: AuthCubit.instance.isShowPassword,
                    hintText: tr.enterPassword,
                    suffixIcon: AuthCubit.instance.isShowPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    suffixIconOnTap: () {
                      AuthCubit.instance.showPassword();
                    },
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    obscureText: AuthCubit.instance.isShowConfirmPassword,
                    hintText: tr.confirmPassword,
                    suffixIcon: AuthCubit.instance.isShowConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    suffixIconOnTap: () {
                      AuthCubit.instance.showConfirmPassword();
                    },
                  ),
                  SizedBox(height: 40.h),
                  CustomButton(
                    title: tr.login,
                    isLogin: true,
                  ),
                  SizedBox(height: 24.h),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      tr.or,
                      style: AppTextStyle.textStyle(
                        appFontSize: 14.sp,
                        appFontHeight: 16.8.sp,
                        appFontWeight: FontWeight.w600,
                        color: ColorResources.blackColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    spacing: 16.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIcons(image: IconsResources.apple),
                      CustomIcons(image: IconsResources.google),
                      CustomIcons(image: IconsResources.facebook),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  GestureDetector(
                    onTap: () {
                      context.pushReplacementNamed(Routes.login);
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: isArabic
                                ? "${tr.iAlreadyHaveAnAccount}؟  "
                                : "${tr.iAlreadyHaveAnAccount}? ",
                            style: AppTextStyle.textStyle(
                              appFontSize: 16.sp,
                              appFontHeight: 19.36.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.blackColor,
                            ),
                          ),
                          TextSpan(
                            text: tr.login,
                            style: AppTextStyle.textStyle(
                                appFontSize: 16.sp,
                                appFontHeight: 19.36.sp,
                                appFontWeight: FontWeight.w400,
                                color: ColorResources.greenColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
