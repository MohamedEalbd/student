part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class ChangeColor extends HomeState {}
final class SelectCard extends HomeState {
  final int index;

  SelectCard({required this.index});
}
