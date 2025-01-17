import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/courses/models/lecturers_model.dart';
import 'package:student/features/lecturers/models/lecturers_model.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/resources/icons_resources.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());

  static final CoursesCubit _profileCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static CoursesCubit get instance => _profileCubit;

  int currentIndex = 0;
  int currentDay1 = 0;
  int currentDay2 = 0;
  int selectTest = 0;

  void selectCard(int index) {
    currentIndex = index;
    emit(SelectCard(index: currentIndex));
    emit(ChangeColor());
  }

  void selectDay1(int index) {
    currentDay1 = index;
    emit(SelectCard(index: currentDay1));
    emit(ChangeColor());
  }

  void selectDay2(int index) {
    currentDay2 = index;
    emit(SelectCard(index: currentDay2));
    emit(ChangeColor());
  }

  void selectTests(int index) {
    selectTest = index;
    emit(SelectCard(index: selectTest));
    emit(ChangeColor());
  }

  List<MyLecturersModel> lecturers= [
    MyLecturersModel(numberLecturers: 1, isLogin: true,percent: 1.00),
    MyLecturersModel(numberLecturers: 2, isLogin: true,percent: 0.25),
    MyLecturersModel(numberLecturers: 3, isLogin: false),
    MyLecturersModel(numberLecturers: 4, isLogin: false),
  ];
  List<MyLecturersModel> test= [
    MyLecturersModel(numberLecturers: 1, isLogin: true,percent: 1.00),
    MyLecturersModel(numberLecturers: 2, isLogin: true,percent: 1),
    MyLecturersModel(numberLecturers: 3, isLogin: false),
    MyLecturersModel(numberLecturers: 4, isLogin: false),
  ];

  List words = [
    tr.courses,
    tr.completedCourses,
  ];

  List tests = [
    {'title': tr.lecturers, "imageUrl": IconsResources.note},
    {'title': tr.tests, "imageUrl": IconsResources.test},
  ];

  List listOfCourses = [
    tr.capabilities,
    tr.achievement,
  ];
  
  List listOfCoursesComplete = [
    tr.capabilities,
    tr.achievement,
  ];

  List<String> days = [
    tr.sunday,
    tr.thursday,
  ];
}
