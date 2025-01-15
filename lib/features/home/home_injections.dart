import 'package:student/app_injections.dart';
import 'package:student/features/home/cubit/home_cubit.dart';

void homeInjections(){
  getIt.registerFactory<HomeCubit>(()=>HomeCubit());
}