import 'package:gallery_app_new/modules/container/screen/container_screen.dart';
import 'package:gallery_app_new/modules/home/screen/home_screen.dart';
import 'package:gallery_app_new/modules/row_column/screen/row_and_column_screen.dart';
import 'package:gallery_app_new/modules/stack_align/screen/stack_align_screen.dart';
import 'package:gallery_app_new/modules/text/screen/text_screen.dart';
import 'package:gallery_app_new/router/route_name.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: AppRouteNames.home.path,
    routes: <RouteBase>[
      GoRoute(
        name: AppRouteNames.home.name,
        path: AppRouteNames.home.path,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: AppRouteNames.richText.name,
        path: AppRouteNames.richText.path,
        builder: (context, state) => const TextScreen(),
      ),
      GoRoute(
        name: AppRouteNames.stack.name,
        path: AppRouteNames.stack.path,
        builder: (context, state) => const StackAlignScreen(),
      ),
      GoRoute(
        name: AppRouteNames.rowColumn.name,
        path: AppRouteNames.rowColumn.path,
        builder: (context, state) => RowAndColumnScreen(),
      ),
      GoRoute(
        name: AppRouteNames.container.name,
        path: AppRouteNames.container.path,
        builder: (context, state) => const ContainerScreen(),
      ),
    ],
  );
}
