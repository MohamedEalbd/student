import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student/app_injections.dart';
import 'package:student/core/classes/set_up_logger.dart';
import 'package:student/core/storage/pref_services.dart';
import 'package:student/core/storage/secure_storage_service.dart';
import 'package:student/my_app.dart';
import 'package:student/shared/cubits/bloc_observer.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefServices.instance.init();
  await SecureStorageService.instance.init();
  await appInjections();
  SetUpLogger.instance.initLogger();
  Bloc.observer = MyBlocObserver();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}
