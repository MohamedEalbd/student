import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/shared/resources/icons_resources.dart';

class CustomDropList extends StatelessWidget {
  final String? value;
  final List<String> list;
  final ValueChanged<String> valueChanged;
  const CustomDropList({
    super.key,
    this.value,
    required this.valueChanged,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: DropdownButton(
          padding: EdgeInsets.zero,
          isExpanded: false,
          icon: SvgPicture.asset(IconsResources.arrowDown),
          //iconEnabledColor: Colors.green,
          //dropdownColor: Color(0xFFB7C89C),
          borderRadius: BorderRadius.circular(15.r),
          iconSize: 35,
          value: value,
          items: list.map((title) {
            return DropdownMenuItem<String>(
              value: title,
              child: Text(title),
            );
          }).toList(),
          onChanged: (newValue) {
            valueChanged(newValue!);
          }),
    );
  }
}
