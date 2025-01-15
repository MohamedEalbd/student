import 'package:flutter/material.dart';
import 'package:student/core/classes/responsive_screen.dart';
import 'package:student/core/routes/routes.dart';
import 'package:student/shared/extentions/navigations.dart';
import 'package:student/shared/resources/image_resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //ThemeCubit.instance.initSharedData();
    Future.delayed(const Duration(milliseconds: 3000), () {
      context.pushReplacementNamed(Routes.onBoard);
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: ResponsiveScreen.width,
          maxHeight: ResponsiveScreen.height,
          minHeight: ResponsiveScreen.height,
          minWidth: ResponsiveScreen.width,
        ),
        child: Image.asset(ImageResources.splash),
      ),
    );
  }

  // getFirst() async {
  //   await SetUpMyApp.getLocation(context);
  //   context.pushReplacementNamed(Routes.home);
  // }
}
