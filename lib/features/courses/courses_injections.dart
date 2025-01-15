import 'package:student/app_injections.dart';
import 'package:student/features/courses/cubit/courses_cubit.dart';

void coursesInjections(){
  getIt.registerFactory<CoursesCubit>(()=>CoursesCubit());
}