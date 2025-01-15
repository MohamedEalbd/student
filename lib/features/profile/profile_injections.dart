import 'package:student/app_injections.dart';
import 'package:student/features/profile/cubit/profile_cubit.dart';

void profileInjections(){
  getIt.registerFactory<ProfileCubit>(()=>ProfileCubit());
}