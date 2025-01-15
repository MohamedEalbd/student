import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcons extends StatelessWidget {
  const CustomIcons({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SvgPicture.asset(image),
    );
  }
}
