import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/functions/check_for_current_language.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/profile/widgets/header_card.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/resources/image_resources.dart';
import 'package:student/shared/widgets/titleAppBar.dart';

AppBar displayAppBar(int index, Widget leading) {
  switch (index) {
    case 0:
      return AppBar(
        leading: leading,
        title: Image.asset(ImageResources.appBarLogo),
        centerTitle: true,
        actions: [
          SvgPicture.asset(IconsResources.cart),
          SizedBox(width: 8.w),
          Padding(
            padding: isArabic
                ? EdgeInsets.only(left: 24.w)
                : EdgeInsets.only(right: 24.w),
            child: SvgPicture.asset(IconsResources.bell),
          ),
        ],
      );
    case 1:
      return AppBar(
        leading: leading,
        centerTitle: true,
        title: TitleAppBar(title: tr.courses),
      );
    case 2:
      return AppBar(
        leading: leading,
        centerTitle: true,
        title: TitleAppBar(title: tr.lecturers),
      );
    case 3:
      return AppBar(
        leading: leading,
        centerTitle: true,
        title: TitleAppBar(title: tr.cart),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SvgPicture.asset(IconsResources.delete),
          )
        ],
      );
    case 4:
      return AppBar(
        //backgroundColor: ColorResources.primaryColor,
        leading: leading,
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(390.w, 264.h),
          child: HeaderCard(),
        ),
        title: TitleAppBar(
          title: tr.profile,
          isProfile: true,
        ),
      );
    case 5:
      return AppBar(
        leading: leading,
        centerTitle: true,
        title: TitleAppBar(title: tr.settings),
      );
    default:
      return AppBar(
        title: Image.asset(ImageResources.appBarLogo),
        centerTitle: true,
        actions: [
          SvgPicture.asset(IconsResources.cart),
          SizedBox(width: 8.w),
          Padding(
            padding: isArabic
                ? EdgeInsets.only(left: 24.w)
                : EdgeInsets.only(right: 24.w),
            child: SvgPicture.asset(IconsResources.bell),
          ),
        ],
      );
  }
}
