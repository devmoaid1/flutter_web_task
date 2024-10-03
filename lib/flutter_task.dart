import 'package:flutter/material.dart';

import 'views/home_view.dart';

class FlutterTaskApp extends StatelessWidget {
  const FlutterTaskApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Task',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView());
  }
}
