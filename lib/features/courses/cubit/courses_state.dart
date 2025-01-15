part of 'courses_cubit.dart';

@immutable
sealed class CoursesState {}

final class CoursesInitial extends CoursesState {}
final class ChangeColor extends CoursesState {}

final class SelectCard extends CoursesState {
  final int index;

  SelectCard({required this.index});
}

final class ChangeIndex extends CoursesState {
  final int index;

  ChangeIndex({required this.index});
}

final class DisplayAnswers extends CoursesState {
  final bool isDisplay;
  final int index;

  DisplayAnswers({required this.isDisplay,required this.index});
}

