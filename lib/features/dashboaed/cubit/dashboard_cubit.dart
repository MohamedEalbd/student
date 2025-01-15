import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/dashboaed/models/screen_model.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/resources/icons_resources.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());

  static final DashboardCubit _dashboardCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static DashboardCubit get instance => _dashboardCubit;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  void selectCard(int index) {
    currentIndex = index;
    emit(SelectCard(index: currentIndex));
    emit(ChangeColor());
  }

  List<ScreenModel> widgets = [
    ScreenModel(id: 1, name: tr.home, icon: IconsResources.home),
    ScreenModel(id: 1, name: tr.courses, icon: IconsResources.note),
    ScreenModel(id: 1, name: tr.lecturers, icon: IconsResources.hatTeacher),
    ScreenModel(id: 1, name: tr.cart, icon: IconsResources.cart2),
    ScreenModel(id: 1, name: tr.profile, icon: IconsResources.profileIcon),
    ScreenModel(id: 1, name: tr.settings, icon: IconsResources.settings),
  ];
}
