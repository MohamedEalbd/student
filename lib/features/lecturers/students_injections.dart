import 'package:student/app_injections.dart';
import 'package:student/features/lecturers/cubit/lecturers_cubit.dart';

void lecturersInjections(){
  getIt.registerFactory<LecturersCubit>(()=>LecturersCubit());
}