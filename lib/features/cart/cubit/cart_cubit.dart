import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/functions/translate.dart';
import 'package:student/my_app.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  static final CartCubit _cartCubit = BlocProvider.of(navigatorKey.currentContext!);
  static CartCubit get instance => _cartCubit; 

  List  words =[
    tr.capabilities,
    tr.achievement,
  ];
}
