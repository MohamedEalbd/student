import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:student/core/routes/routes.dart';
import 'package:student/features/auth/screens/initial_page.dart';
import 'package:student/features/auth/screens/login_or_signup.dart';
import 'package:student/features/auth/screens/login_screen.dart';
import 'package:student/features/auth/screens/sign_up_screen.dart';
import 'package:student/features/cart/screens/cart_screen.dart';
import 'package:student/features/courses/screens/abilities_course_screen.dart';
import 'package:student/features/dashboaed/screens/dashboard_screen.dart';
import 'package:student/features/home/screens/home_screen.dart';
import 'package:student/features/onboard/screens/onboard_screen.dart';
import 'package:student/features/splash/screen/splash_screen.dart';
import 'package:student/features/lecturers/screens/lecturers_screen.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final nameRoute = settings.name;
    //final arg = settings.arguments;

    switch (nameRoute) {
      case Routes.splash:
        return _buildRoute(const SplashScreen(), isIos);
      case Routes.onBoard:
        return _buildRoute(const OnboardScreen(), isIos);
      case Routes.home:
        return _buildRoute(const HomeScreen(), isIos);
      case Routes.login:
        return _buildRoute(const LoginScreen(), isIos);
      case Routes.signUp:
        return _buildRoute(const SignUpScreen(), isIos);
      case Routes.loginOrSignUp:
        return _buildRoute(const LoginOrSignUp(), isIos);
      case Routes.initialPage:
        return _buildRoute(const InitialPage(), isIos);
      case Routes.dashBoard:
        return _buildRoute(const DashboardScreen(), isIos);
      case Routes.cart:
        return _buildRoute(const CartScreen(), isIos);
      case Routes.lecturers:
        return _buildRoute(const LecturersScreen(), isIos);
      // case Routes.detailsForStudent:
      //   if (arg is StudentModel) {
      //     return _buildRoute(DetailsLecturersScreen(student: arg), isIos);
      //   } else {
      //     return _buildRoute(const UndefinedWidget(), isIos);
      //   }
      case Routes.abilitiesCourse:
        return _buildRoute(const AbilitiesCourseScreen(), isIos);
      // case Routes.contentCourseScreen:
      //   return _buildRoute(const ContentCourseScreen(), isIos);
      // case Routes.editProfile:
      //   return _buildRoute(const EditProfileScreen(), isIos);
      // case Routes.settings:
      //   return _buildRoute(const SettingsScreen(), isIos);
      // case Routes.ruleSettingsScreen:
      //   return _buildRoute(const RuleSettingsScreen(), isIos);
      // case Routes.langScreen:
      //   return _buildRoute(const LanguageScreen(), isIos);
      // case Routes.bankInfoScreen:
      //   return _buildRoute(const BankInfoScreen(), isIos);
      // case Routes.reportScreen:
      //   return _buildRoute(const ReportScreen(), isIos);
      // case Routes.chatScreen:
      //   return _buildRoute(const ChatScreen(), isIos);
      // case Routes.coupon:
      //   return _buildRoute(const AddCouponScreen(), isIos);
      // case Routes.promotionScreen:
      //   return _buildRoute(const PromotionScreen(), isIos);
      // case Routes.addonsScreen:
      //   return _buildRoute(const AddonsScreen(), isIos);
      // case Routes.dateScreen:
      //   return _buildRoute(const DateScreen(), isIos);
      // case Routes.myOrderDetails:
      //   if (arg is MyOrder) {
      //     return _buildRoute(MyOrderDetails(myOrder: arg), isIos);
      //   } else {
      //     return _buildRoute(const UndefinedWidget(), isIos);
      //   }

      default:
        return _buildRoute(const UndefinedWidget(), isIos);
    }
  }

  static _buildRoute(Widget page, bool isIos) {
    if (isIos) {
      return CupertinoPageRoute(builder: (_) => page);
    } else {
      return MaterialPageRoute(builder: (_) => page);
    }
  }
}

class UndefinedWidget extends StatelessWidget {
  const UndefinedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("undefined"),
      ),
      body: const Center(
        child: Text("undefined"),
      ),
    );
  }
}
