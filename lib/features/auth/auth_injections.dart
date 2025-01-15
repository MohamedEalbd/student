import 'package:student/app_injections.dart';
import 'package:student/features/auth/cubit/auth_cubit.dart';

void authInjections(){
  getIt.registerFactory<AuthCubit>(()=>AuthCubit());
}