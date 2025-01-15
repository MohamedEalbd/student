import 'package:flutter/material.dart';
import 'package:student/shared/extentions/navigations.dart';


class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      //child: Image.asset(ImageResources.arrowLeft),
    );
  }
}
