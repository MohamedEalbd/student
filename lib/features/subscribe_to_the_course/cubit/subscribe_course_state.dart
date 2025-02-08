part of 'subscribe_course_cubit.dart';

@immutable
sealed class SubscribeCourseState {}

final class SubscribeCourseInitial extends SubscribeCourseState {}


final class ChangeColor extends SubscribeCourseState {}
final class AddToCart extends SubscribeCourseState {}

final class SelectCard extends SubscribeCourseState {
  final int index;

  SelectCard({required this.index});
}

final class ChangeIndex extends SubscribeCourseState {
  final int index;

  ChangeIndex({required this.index});
}
final class ChangeValue extends SubscribeCourseState {
  final String value;

  ChangeValue({required this.value});
}

