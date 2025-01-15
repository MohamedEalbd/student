part of 'dashboard_cubit.dart';

@immutable
sealed class DashboardState {}

final class DashboardInitial extends DashboardState {}
final class ChangeColor extends DashboardState {}
final class SelectCard extends DashboardState {
  final int index;

  SelectCard({required this.index});
}
