import 'package:student/app_injections.dart';
import 'package:student/features/cart/cubit/cart_cubit.dart';

void cartInjections(){
  getIt.registerFactory<CartCubit>(()=>CartCubit());
}