import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/features/profile/cubit/profile_cubit.dart';
import 'package:student/features/profile/widgets/details/if_display_degrees.dart';
import 'package:student/features/profile/widgets/details/if_display_students.dart';
import 'package:student/shared/widgets/custom_card_dailog.dart';
import 'package:student/shared/resources/color_resources.dart';
import 'package:student/shared/widgets/custom_container_display_students_or_degree.dart';
import 'package:student/shared/widgets/select_title_to_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 22.w),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 16.h),
                  CustomCardDialog(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomContainerDisplayStudentsOrDegree(
                            child: Row(
                              children: [
                                ...List.generate(
                                    ProfileCubit.instance.words.length,
                                    (index) {
                                  return SelectTitleToDetails(
                                    currentIndex:
                                        ProfileCubit.instance.currentIndex,
                                    onTap: () {
                                      ProfileCubit.instance.selectCard(index);
                                    },
                                    title: ProfileCubit.instance.words[index]
                                        ['title'],
                                    image: ProfileCubit.instance.words[index]
                                        ['imageUrl'],
                                    colorContainer:
                                        ProfileCubit.instance.currentIndex ==
                                                index
                                            ? ColorResources.primaryColor
                                            : ColorResources.whiteColor,
                                    colorText:
                                        ProfileCubit.instance.currentIndex ==
                                                index
                                            ? ColorResources.whiteColor
                                            : ColorResources.primaryColor,
                                  );
                                }),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          if (ProfileCubit.instance.currentIndex == 0)
                            IfDisplayProfile(),
                          if (ProfileCubit.instance.currentIndex == 1)
                            IfDisplayDegrees(),
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
