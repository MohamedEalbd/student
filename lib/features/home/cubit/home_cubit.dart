import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/home/models/course_model.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/resources/image_resources.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static final HomeCubit _homeCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static HomeCubit get instance => _homeCubit;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  void selectCard(int index) {
    currentIndex = index;
    emit(SelectCard(index: currentIndex));
    emit(ChangeColor());
  }

  List<String> listOfWords = [
    tr.capabilities,
    tr.achievement,
  ];

  List<CourseModel> courses = [
    CourseModel(
      id: 1,
      title: tr.capabilities,
      description: '4 ${tr.lesson}',
      imageUrl: ImageResources.profile,
      students: 10,
      hours: 1,
    ),
    CourseModel(
      id: 2,
      title: tr.achievement,
      description: '4 ${tr.lesson}',
      imageUrl: ImageResources.profile,
      students: 10,
      hours: 1,
    ),
  ];

  List<String> words = [
    tr.highSchool,
    tr.universities,
  ];
}
