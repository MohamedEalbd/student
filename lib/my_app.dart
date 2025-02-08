import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/app_injections.dart';
import 'package:student/core/routes/routes_generator.dart';
import 'package:student/features/auth/cubit/auth_cubit.dart';
import 'package:student/features/cart/cubit/cart_cubit.dart';
import 'package:student/features/courses/cubit/courses_cubit.dart';
import 'package:student/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:student/features/home/cubit/home_cubit.dart';
import 'package:student/features/onboard/cubit/onboard_cubit.dart';
import 'package:student/features/profile/cubit/profile_cubit.dart';
import 'package:student/features/splash/cubit/theme_cubit.dart';
import 'package:student/features/lecturers/cubit/lecturers_cubit.dart';
import 'package:student/features/splash/screen/splash_screen.dart';
import 'package:student/features/subscribe_to_the_course/cubit/subscribe_course_cubit.dart';
import 'package:student/generated/l10n.dart';

//! when you want using localization in this app
//* please install the flutter intl (extention) from plugins in android studio or visual studio

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<ThemeCubit>(create: (context) => getIt<ThemeCubit>()),
            BlocProvider<OnboardCubit>(
                create: (context) => getIt<OnboardCubit>()),
            BlocProvider<AuthCubit>(create: (context) => getIt<AuthCubit>()),
            BlocProvider<HomeCubit>(create: (context) => getIt<HomeCubit>()),
            BlocProvider<DashboardCubit>(
                create: (context) => getIt<DashboardCubit>()),
            BlocProvider<CartCubit>(create: (context) => getIt<CartCubit>()),
            BlocProvider<LecturersCubit>(
                create: (context) => getIt<LecturersCubit>()),
            BlocProvider<ProfileCubit>(
                create: (context) => getIt<ProfileCubit>()),
            BlocProvider<CoursesCubit>(
                create: (context) => getIt<CoursesCubit>()),
            BlocProvider<SubscribeCourseCubit>(
                create: (context) => getIt<SubscribeCourseCubit>()),
          
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RoutesGenerator.onGenerateRoute,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale("ar"),
            home: child,
          ),
        );
      },
      child: SplashScreen(),
    );
  }
}
