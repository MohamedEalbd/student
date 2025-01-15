import 'package:student/app_injections.dart';
import 'package:student/features/onboard/cubit/onboard_cubit.dart';

void onBoardInjection(){
  getIt.registerFactory<OnboardCubit>(()=>OnboardCubit());
}