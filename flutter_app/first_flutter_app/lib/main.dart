import 'package:first_flutter_app/cubit/app_cubit.dart';
import 'package:first_flutter_app/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: BlocProvider(
        create: (context) => AppCubit(),
        child: MyHomePage(),
      ),
    );
  }
}
