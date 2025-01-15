import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/home/cubit/home_cubit.dart';
import 'package:student/features/home/widgets/custom_list_horizontal.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/widgets/display_courses.dart';

import '../widgets/Custom_card_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                Align(
                  alignment: isArabic ? Alignment.topRight : Alignment.topLeft,
                  child: Text(
                    tr.welcome,
                    style: AppTextStyle.textStyle(
                      appFontSize: 24.sp,
                      appFontHeight: 29.05.sp,
                      appFontWeight: FontWeight.w600,
                      color: ColorResources.blackColor,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Align(
                  alignment: isArabic ? Alignment.topRight : Alignment.topLeft,
                  child: Text(
                    tr.enterYourCourse,
                    style: AppTextStyle.textStyle(
                      appFontSize: 14.sp,
                      appFontHeight: 16.94.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.blackColor.withOpacity(0.50),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  spacing: 8.w,
                  children: [
                    ...List.generate(HomeCubit.instance.words.length, (index) {
                      return CustomCardHome(
                        onTap: () {
                          HomeCubit.instance.selectCard(index);
                        },
                        title: HomeCubit.instance.words[index],
                        colorContainer: HomeCubit.instance.currentIndex == index
                            ? ColorResources.primaryColor
                            : ColorResources.primaryColor.withOpacity(0.10),
                        colorText: HomeCubit.instance.currentIndex == index
                            ? ColorResources.whiteColor
                            : ColorResources.blackColor,
                      );
                    }),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomListHorizontal(),
                SizedBox(height: 16.h),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return DisplayCourses(
                        courses: HomeCubit.instance.courses[index],
                      );
                    },
                    separatorBuilder: (_, index) => SizedBox(height: 16.h),
                    itemCount: HomeCubit.instance.courses.length,
                  ),
                )
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: GestureDetector(
            onTap: () {
              // showDialog(
              //     context: context,
              //     builder: (context) {
              //       return AddCourseScreen();
              //     });
            },
            child: Container(
              height: 65.h,
              width: 200.w,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: ColorResources.greenColor,
                boxShadow: [
                  BoxShadow(
                    color: ColorResources.blackColor.withOpacity(0.3),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              child: Row(
                spacing: 8.w,
                children: [
                  Icon(
                    Icons.add,
                    color: ColorResources.whiteColor,
                    size: 24,
                    weight: 24.w,
                  ),
                  Text(
                    tr.addNewCourse,
                    style: AppTextStyle.textStyle(
                      appFontSize: 16.sp,
                      appFontHeight: 19.36.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.whiteColor,
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

// Painter for the curved shape
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue.withOpacity(0.6) // Adjust overlay color
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height * 0.4);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.6, size.width, size.height * 0.3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}