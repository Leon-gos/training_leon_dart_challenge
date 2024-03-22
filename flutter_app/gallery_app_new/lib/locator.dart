import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app_new/router/router.dart';
import 'package:get_it/get_it.dart';

Future initializeApp({String? name, FirebaseOptions? firebaseOptions}) async {
  WidgetsFlutterBinding.ensureInitialized();
  _locator();
  await Firebase.initializeApp(name: name, options: firebaseOptions);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
}

void _locator() {
  GetIt.I.registerLazySingleton(() => AppRouter());
}