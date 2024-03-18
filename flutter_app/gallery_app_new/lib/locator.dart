import 'package:gallery_app_new/router/router.dart';
import 'package:get_it/get_it.dart';

Future initializeApp() async {
  _locator();
}

void _locator() {
  GetIt.I.registerLazySingleton(() => AppRouter());
}