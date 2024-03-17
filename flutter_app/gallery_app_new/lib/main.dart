import 'package:flutter/material.dart';
import 'package:gallery_app_new/modules/home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     title: const Text("My widget"),
    //     actions: [
    //       Container(
    //         margin: const EdgeInsets.only(right: 16),
    //         child: const Icon(Icons.account_circle),
    //       )
    //     ],
    //   ),
    //   body: HomeScreen(),
    // );
    return const HomeScreen();
  }
}
