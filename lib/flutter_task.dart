import 'package:flutter/material.dart';
import 'package:flutter_web_task/core/theme/app_colors.dart';

import 'views/home_view.dart';

class FlutterTaskApp extends StatelessWidget {
  const FlutterTaskApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: AppColors.black,
          useMaterial3: true,
        ),
        home: const HomeView());
  }
}
