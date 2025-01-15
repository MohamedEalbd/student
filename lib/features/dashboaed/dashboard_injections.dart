import 'package:student/app_injections.dart';
import 'package:student/features/dashboaed/cubit/dashboard_cubit.dart';

void dashboardInjections(){
  getIt.registerFactory<DashboardCubit>(()=>DashboardCubit());
}