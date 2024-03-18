import 'package:flutter/material.dart';
import 'package:gallery_app_new/locator.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_bloc.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_cubit.dart';
import 'package:gallery_app_new/router/router.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_bloc.dart';

Future<void> main() async {
  await initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = GetIt.I<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<StackBloc>(
            create: (context) => StackBloc(),
          ),
          BlocProvider<RowColumnBloc>(
            create: (context) => RowColumnBloc(),
          ),
          BlocProvider<RowColumnCubit>(
            create: (context) => RowColumnCubit(),
          ),
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: _appRouter.router,
          debugShowCheckedModeBanner: false,
        ));
  }
}
