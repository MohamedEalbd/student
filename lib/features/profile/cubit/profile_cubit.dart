import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/features/lecturers/models/answers_model.dart';
import 'package:student/features/lecturers/models/exam_model.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/resources/icons_resources.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  static final ProfileCubit _profileCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static ProfileCubit get instance => _profileCubit;

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

  List<String> days = [
    tr.sunday,
    tr.thursday,
  ];
  List words = [
    {"title": tr.theStudents, "imageUrl": IconsResources.hat},
    {"title": tr.degrees, "imageUrl": IconsResources.chart},
  ];
  List results = [
    {"number": 10, "title": tr.subscribers},
    {"number": 25, "title": tr.student},
    {"number": 10, "title": tr.phoneUsers},
    {"number": 15, "title": tr.computerUsers},
  ];

  bool isClickOnArrowDown = false;

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

 
}
