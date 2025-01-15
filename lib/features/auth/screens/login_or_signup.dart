import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/features/auth/cubit/auth_cubit.dart';
import 'package:student/features/auth/screens/login_screen.dart';
import 'package:student/features/auth/screens/sign_up_screen.dart';

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (_, value) {
      if (AuthCubit.instance.isLogin == true) {
        return LoginScreen(onTap: AuthCubit.instance.listenToAuth);
      } else {
        return SignUpScreen(onTap: AuthCubit.instance.listenToAuth);
      }
    });
  }
}
