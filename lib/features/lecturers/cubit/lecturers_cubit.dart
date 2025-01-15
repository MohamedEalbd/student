import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/lecturers/models/answers_model.dart';
import 'package:student/features/lecturers/models/exam_model.dart';
import 'package:student/features/lecturers/models/lecturers_model.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/resources/icons_resources.dart';
import 'package:student/shared/resources/image_resources.dart';

part 'lecturers_state.dart';

class LecturersCubit extends Cubit<LecturersState> {
  LecturersCubit() : super(LecturersInitial());
  static final LecturersCubit _LecturersCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static LecturersCubit get instance => _LecturersCubit;

  bool isClickOnArrowDown = false;

  int currentIndex = 0;
  int displayAnswer = 0;

  String? value = tr.materials;
  String? value2 = tr.organization;

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

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndex(index: currentIndex));
  }

  void displayAnswers(int index) {
    displayAnswer = index;
    isClickOnArrowDown = !isClickOnArrowDown;
    emit(DisplayAnswers(
      isDisplay: isClickOnArrowDown,
      index: displayAnswer,
    ));
  }

  List words = [
    {"title": tr.theStudent, "imageUrl": IconsResources.hatTeacher},
    {"title": tr.degrees, "imageUrl": IconsResources.degree},
  ];

  List<AnswersModel> answers = [
    AnswersModel(
      id: 1,
      name: "${tr.question} 1",
      mark: IconsResources.correct,
      type: "B",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 2",
      mark: IconsResources.wrong,
      type: "A",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 3",
      mark: IconsResources.correct,
      type: "C",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 4",
      mark: IconsResources.correct,
      type: "B",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 5",
      mark: IconsResources.correct,
      type: "A",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 6",
      mark: IconsResources.wrong,
      type: "B",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 7",
      mark: IconsResources.wrong,
      type: "C",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 8",
      mark: IconsResources.correct,
      type: "A",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 9",
      mark: IconsResources.correct,
      type: "B",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 10",
      mark: IconsResources.wrong,
      type: "C",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 11",
      mark: IconsResources.correct,
      type: "A",
    ),
    AnswersModel(
      id: 1,
      name: "${tr.question} 12",
      mark: IconsResources.correct,
      type: "B",
    ),
  ];

  List<ExamModel> exams = [
    ExamModel(
      name: "${tr.test} 1",
      answers: [
        AnswersModel(
          id: 1,
          name: "${tr.question} 1",
          mark: IconsResources.correct,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 2",
          mark: IconsResources.wrong,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 3",
          mark: IconsResources.correct,
          type: "C",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 4",
          mark: IconsResources.correct,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 5",
          mark: IconsResources.correct,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 6",
          mark: IconsResources.wrong,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 7",
          mark: IconsResources.wrong,
          type: "C",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 8",
          mark: IconsResources.correct,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 9",
          mark: IconsResources.correct,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 10",
          mark: IconsResources.wrong,
          type: "C",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 11",
          mark: IconsResources.correct,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 12",
          mark: IconsResources.correct,
          type: "B",
        ),
      ],
    ),
    ExamModel(name: "${tr.test} 2", answers: [
      AnswersModel(
        id: 1,
        name: "${tr.question} 1",
        mark: IconsResources.correct,
        type: "B",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 2",
        mark: IconsResources.wrong,
        type: "A",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 3",
        mark: IconsResources.correct,
        type: "C",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 4",
        mark: IconsResources.correct,
        type: "B",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 5",
        mark: IconsResources.correct,
        type: "A",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 6",
        mark: IconsResources.wrong,
        type: "B",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 7",
        mark: IconsResources.wrong,
        type: "C",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 8",
        mark: IconsResources.correct,
        type: "A",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 9",
        mark: IconsResources.correct,
        type: "B",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 10",
        mark: IconsResources.wrong,
        type: "C",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 11",
        mark: IconsResources.correct,
        type: "A",
      ),
      AnswersModel(
        id: 1,
        name: "${tr.question} 12",
        mark: IconsResources.correct,
        type: "B",
      ),
    ]),
    ExamModel(
      name: "${tr.test} 3",
      answers: [
        AnswersModel(
          id: 1,
          name: "${tr.question} 1",
          mark: IconsResources.correct,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 2",
          mark: IconsResources.wrong,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 3",
          mark: IconsResources.correct,
          type: "C",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 4",
          mark: IconsResources.correct,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 5",
          mark: IconsResources.correct,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 6",
          mark: IconsResources.wrong,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 7",
          mark: IconsResources.wrong,
          type: "C",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 8",
          mark: IconsResources.correct,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 9",
          mark: IconsResources.correct,
          type: "B",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 10",
          mark: IconsResources.wrong,
          type: "C",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 11",
          mark: IconsResources.correct,
          type: "A",
        ),
        AnswersModel(
          id: 1,
          name: "${tr.question} 12",
          mark: IconsResources.correct,
          type: "B",
        ),
      ],
    ),
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
