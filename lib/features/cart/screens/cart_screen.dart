import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student/features/cart/cubit/cart_cubit.dart';
import 'package:student/features/cart/widgets/list_of_my_courses.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            itemBuilder: (context, index) {
              return ListOfMyCourses(
                title: CartCubit.instance.words[index],
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemCount: CartCubit.instance.words.length,
          );
        },
      ),
    );
  }
}
