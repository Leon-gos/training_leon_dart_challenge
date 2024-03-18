import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/home/screen/home_screen.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/screen/stack_align_screen.dart';
import 'package:gallery_app_new/modules/text/screen/text_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: 'richText',
        path: '/richText',
        builder: (context, state) => const TextScreen(),
      ),
      GoRoute(
        name: 'stackAlign',
        path: '/stackAlign',
        builder: (context, state) => const StackAlignScreen(),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<StackBloc>(
            create: (context) => StackBloc(),
          ),
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
        ));
  }
}
