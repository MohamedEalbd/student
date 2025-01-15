import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/onboard/models/onboard_model.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardInitial());
  static final OnboardCubit _onboardCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static OnboardCubit get instance => _onboardCubit;
  PageController controller = PageController();
  int currentIndex = 0;
  int selectType = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndex(index: currentIndex));
  }

  void selectRole(int index) {
    selectType = index;
    emit(ChangeIndex(index: selectType));
  }

  void nextPage() {
    currentIndex++;
    if (currentIndex > onBoarding.length - 1) {
    } else {
      controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 3000),
        curve: Curves.easeOutBack,
      );
    }
  }

  List words = [
    {"title": tr.student, "imageUrl": IconsResources.hat},
    {"title": tr.teacher, "imageUrl": IconsResources.teacher},
  ];

  List<OnboardModel> onBoarding = [
    OnboardModel(
      image: ImageResources.onboard,
      id: 1,
    ),
    OnboardModel(
      image: ImageResources.onboard,
      id: 2,
    ),
    OnboardModel(
      image: ImageResources.onboard,
      id: 3,
    ),
  ];
}
