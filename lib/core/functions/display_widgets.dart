import 'package:flutter/material.dart';
import 'package:student/features/cart/screens/cart_screen.dart';
import 'package:student/features/courses/screens/courses_screen.dart';
import 'package:student/features/home/screens/home_screen.dart';
import 'package:student/features/profile/screens/profile_screen.dart';
import 'package:student/features/lecturers/screens/lecturers_screen.dart';

Widget displayWidgets(int index) {
  switch (index) {
    case 0:
      return HomeScreen();
    case 1:
      return CoursesScreen();
    case 2:
      return LecturersScreen();
    case 3:
      return CartScreen();
    case 4:
      return ProfileScreen();
    case 5:
      return Center(child: Text('settings'));
    default:
      return HomeScreen();
  }
}
