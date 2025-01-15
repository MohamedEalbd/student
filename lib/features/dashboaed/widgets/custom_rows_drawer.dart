import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';

class CustomRowsDrawer extends StatelessWidget {
  const CustomRowsDrawer({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
    required this.color,
  });
  final String image;
  final String title;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 276.w,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorResources.whiteColor.withOpacity(0.10),
              width: 1.w,
            ),
          ),
        ),
        child: Row(
          spacing: 8.w,
          children: [
            SvgPicture.asset(
              image,
              color: color,
            ),
            Text(
              title,
              style: AppTextStyle.textStyle(
                appFontSize: 14.sp,
                appFontHeight: 16.94.sp,
                appFontWeight: FontWeight.w400,
                color: color,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
