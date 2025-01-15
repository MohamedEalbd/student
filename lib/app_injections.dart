import 'package:get_it/get_it.dart';
import 'package:student/features/auth/auth_injections.dart';
import 'package:student/features/cart/cart_injections.dart';
import 'package:student/features/courses/courses_injections.dart';
import 'package:student/features/dashboaed/dashboard_injections.dart';
import 'package:student/features/home/home_injections.dart';
import 'package:student/features/lecturers/students_injections.dart';
import 'package:student/features/onboard/onboard_injections.dart';
import 'package:student/features/profile/profile_injections.dart';

GetIt getIt = GetIt.instance;

Future<void> appInjections() async {
  authInjections();
  onBoardInjection();
  homeInjections();
  dashboardInjections();
  cartInjections();
  lecturersInjections();
  profileInjections();
  coursesInjections(); // addCourseInjections();
}
