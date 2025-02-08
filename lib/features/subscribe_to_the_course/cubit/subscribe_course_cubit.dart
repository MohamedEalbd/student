import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/lecturers/models/lecturers_model.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

part 'subscribe_course_state.dart';

class SubscribeCourseCubit extends Cubit<SubscribeCourseState> {
  SubscribeCourseCubit() : super(SubscribeCourseInitial());
  static final SubscribeCourseCubit _subscribeCourseCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static SubscribeCourseCubit get instance => _subscribeCourseCubit;

  int currentIndex = 0;
  int currentIndexWords = 0;
  bool isAddToCart = false;

  String? value = tr.materials;
  String? value2 = tr.organization;

  void addToCart() {
    isAddToCart = true;
    emit(AddToCart());
  }

  void fetchLecturers(String? value) async {
    this.value = value;
    emit(ChangeValue(value: this.value!));
  }

  void fetchLecturers2(String? value) async {
    this.value2 = value;
    emit(ChangeValue(value: this.value2!));
  }

  void selectCard(int index) {
    currentIndex = index;
    emit(SelectCard(index: currentIndex));
    emit(ChangeColor());
  }

  void selectAboutTeacherOrCourses(int index) {
    currentIndexWords = index;
    emit(SelectCard(index: currentIndexWords));
    emit(ChangeColor());
  }

  List words = [
    {"title": tr.aboutTheTeacher, "imageUrl": IconsResources.teacher},
    {"title": tr.courses, "imageUrl": IconsResources.note},
  ];

  List<LecturersModel> lecturers = [
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
    LecturersModel(
      id: 3,
      name: 'احمد ابو العزم',
      image: ImageResources.profile,
      numbersOfHours: 1,
      numbersOfLectures: 5,
    ),
  ];
}
