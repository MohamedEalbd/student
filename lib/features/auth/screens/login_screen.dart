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

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, this.onTap});
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
            alignment: Alignment.center,
            height: ResponsiveScreen.height,
            width: ResponsiveScreen.width,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageResources.onboard),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTitleLogin(title: tr.login),
                  SizedBox(height: 40.h),
                  CustomTextField(
                    hintText: tr.email,
                    obscureText: true,
                    prefixIcon: ImageResources.profileIcon,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    obscureText: AuthCubit.instance.isShowPasswordLogin,
                    suffixIcon: AuthCubit.instance.isShowPasswordLogin
                        ? Icons.visibility
                        : Icons.visibility_off,
                    suffixIconOnTap: () {
                      AuthCubit.instance.showPasswordLogin();
                    },
                    hintText: tr.password,
                    prefixIcon: ImageResources.locked,
                  ),
                  SizedBox(height: 8.h),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      isArabic
                          ? "${tr.forgetPassword} ؟"
                          : "${tr.forgetPassword} ?",
                      style: AppTextStyle.textStyle(
                        appFontSize: 16.sp,
                        appFontHeight: 19.36.sp,
                        appFontWeight: FontWeight.w500,
                        color: ColorResources.blackColor.withOpacity(
                          0.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 88.h),
                  CustomButton(
                    isLogin: true,
                    title: tr.login,
                    onTap: () {
                      context.pushReplacementNamed(Routes.dashBoard);
                    },
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
                  SizedBox(height: 123.h),
                  GestureDetector(
                    onTap: () {
                      context.pushReplacementNamed(Routes.signUp);
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: isArabic
                                ? "${tr.iDontHaveAnAccount}؟  "
                                : "${tr.iDontHaveAnAccount}? ",
                            style: AppTextStyle.textStyle(
                              appFontSize: 16.sp,
                              appFontHeight: 19.36.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.blackColor,
                            ),
                          ),
                          TextSpan(
                            text: tr.createAccount,
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
