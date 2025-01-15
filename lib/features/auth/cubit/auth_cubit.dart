import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/my_app.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static final AuthCubit _authCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static AuthCubit get instance => _authCubit;

  bool isShowPasswordLogin = false;
  bool isShowPassword = false;
  bool isShowConfirmPassword = false;

  bool isLogin = false;
  void listenToAuth() {
    isLogin = !isLogin;
    emit(
      IsLogin(isLogin: isLogin),
    );
  }

  void showPassword() {
    isShowPassword = !isShowPassword;
    emit(ShowPassword(isShow: isShowPassword));
    emit(ChangeColor());
  }

  void showPasswordLogin() {
    isShowPasswordLogin = !isShowPasswordLogin;
    emit(ShowPassword(isShow: isShowPasswordLogin));
    emit(ChangeColor());
  }

  void showConfirmPassword() {
    isShowConfirmPassword = !isShowConfirmPassword;
    emit(ShowPassword(isShow: isShowConfirmPassword));
    emit(ChangeColor());
  }
}
