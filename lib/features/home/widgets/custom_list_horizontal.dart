import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/features/home/cubit/home_cubit.dart';
import 'package:student/shared/classes/my_custom_painter_widgets.dart';
import 'package:student/shared/classes/text_style.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

class CustomListHorizontal extends StatelessWidget {
  const CustomListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 160.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    width: 252.w,
                    height: 160.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      image: DecorationImage(
                        image: AssetImage(
                            ImageResources.laptop), // Your background image
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomPaint(
                      painter: MyPainterWidget(
                        color: index == 1
                            ? ColorResources.greenColor.withOpacity(0.50)
                            : ColorResources.primaryColor.withOpacity(0.50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: ColorResources.whiteColor,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Text(
                        HomeCubit.instance.listOfWords[index],
                        style: AppTextStyle.textStyle(
                          color: index == 1
                              ? ColorResources.greenColor
                              : ColorResources.primaryColor,
                          appFontWeight: FontWeight.w600,
                          appFontSize: 16.sp,
                          appFontHeight: 19.36.sp,
                        ),
                      ),
                    ),
                  ),
                  // "عدد الدروس 2" Text
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 110.h,
                      width: 130.w,
                      padding: EdgeInsets.only(bottom: 10.h, left: 10.w),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100.r),
                        ),
                        color: index == 1
                            ? ColorResources.greenColor.withOpacity(0.50)
                            : ColorResources.primaryColor.withOpacity(0.50),
                      ),
                      child: Text(
                        "عدد الدروس 2",
                        style: AppTextStyle.textStyle(
                          appFontSize: 16.sp,
                          appFontHeight: 19.36.sp,
                          appFontWeight: FontWeight.w600,
                          color: ColorResources.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 8.w),
            itemCount: HomeCubit.instance.listOfWords.length,
          ),
        );
      },
    );
  }
}
