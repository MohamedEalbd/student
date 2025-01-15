import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/my_app.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());

   static final CoursesCubit _profileCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static CoursesCubit get instance => _profileCubit;

  int currentIndex = 0;
  int currentDay1 = 0;
  int currentDay2 = 0;
  int displayAnswer = 0;

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

 
  List words = [
   tr.courses,
   tr.completedCourses,
  ];
  List listOfCourses = [
   tr.capabilities,
   tr.achievement,
  ];
  List listOfCoursesComplete = [
   tr.capabilities,
   tr.achievement,
  ];
}
