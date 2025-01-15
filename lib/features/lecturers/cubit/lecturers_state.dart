part of 'lecturers_cubit.dart';

@immutable
sealed class LecturersState {}

final class LecturersInitial extends LecturersState {}

final class ChangeColor extends LecturersState {}

final class SelectCard extends LecturersState {
  final int index;

  SelectCard({required this.index});
}

final class ChangeIndex extends LecturersState {
  final int index;

  ChangeIndex({required this.index});
}
final class ChangeValue extends LecturersState {
  final String value;

  ChangeValue({required this.value});
}

final class DisplayAnswers extends LecturersState {
  final bool isDisplay;
  final int index;

  DisplayAnswers({required this.isDisplay,required this.index});
}
