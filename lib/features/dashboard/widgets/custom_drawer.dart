import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/features/dashboard/cubit/dashboard_cubit.dart';

import '../../../core/classes/responsive_screen.dart';
import '../../../shared/resources/color_resources.dart';
import '../../../shared/resources/icons_resources.dart';
import 'custom_rows_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Drawer(
      width: 276.w,
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorResources.primaryColor,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          bottomLeft: Radius.circular(50.r),
        ),
      ),
      backgroundColor: ColorResources.primaryColor,
      child: Container(
        padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
        constraints: BoxConstraints(
          minWidth: ResponsiveScreen.width,
          maxWidth: ResponsiveScreen.width,
          minHeight: ResponsiveScreen.height,
          maxHeight: ResponsiveScreen.height,
        ),
        child: Column(
          //spacing: 24.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(IconsResources.menu),
            BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: DashboardCubit.instance.widgets.length,
                  itemBuilder: (context, index) {
                    return CustomRowsDrawer(
                      onTap: () {
                        DashboardCubit.instance.selectCard(index);
                      },
                      image: DashboardCubit.instance.widgets[index].icon,
                      title: DashboardCubit.instance.widgets[index].name,
                      color: DashboardCubit.instance.currentIndex == index
                          ? ColorResources.whiteColor
                          : ColorResources.whiteColor.withOpacity(0.50),
                    );
                  },
                );
              },
            ),
            // CustomRowsDrawer(
            //   image: IconsResources.chart,
            //   title: tr.statistics,
            // ),
            // CustomRowsDrawer(
            //   image: IconsResources.book,
            //   title: tr.books,
            //   onTap: () {},
            // ),
            // CustomRowsDrawer(
            //   image: IconsResources.hatstudent,
            //   title: tr.student,
            // ),
            // CustomRowsDrawer(
            //   image: IconsResources.cart2,
            //   title: tr.cart,
            // ),
            // CustomRowsDrawer(
            //   image: IconsResources.iconProfile,
            //   title: tr.profile,
            // ),
            // CustomRowsDrawer(
            //   image: IconsResources.settings,
            //   title: tr.settings,
            // ),
          ],
        ),
      ),
    );
  }
}
