import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/app_controller.dart';
import 'package:primeiro_projeto_flutter/home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
          ),
          home: HomePage(),
        );
      }

    );
  }
}