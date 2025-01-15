part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class ChangeColor extends AuthState {}

final class IsLogin extends AuthState {
  final bool isLogin;

  IsLogin({required this.isLogin});
}

final class ShowPassword extends AuthState {
  final bool isShow;
  ShowPassword({required this.isShow});
}
