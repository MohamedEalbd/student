part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}
final class ChangeColor extends ProfileState {}

final class SelectCard extends ProfileState {
  final int index;

  SelectCard({required this.index});
}

final class ChangeIndex extends ProfileState {
  final int index;

  ChangeIndex({required this.index});
}

final class DisplayAnswers extends ProfileState {
  final bool isDisplay;
  final int index;

  DisplayAnswers({required this.isDisplay,required this.index});
}

