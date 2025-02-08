import 'package:student/app_injections.dart';
import 'package:student/features/subscribe_to_the_course/cubit/subscribe_course_cubit.dart';

void subscribeCourseInjections(){
  getIt.registerFactory<SubscribeCourseCubit>(()=>SubscribeCourseCubit());
}