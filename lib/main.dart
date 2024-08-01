import 'package:flutter/material.dart';
import 'package:widgets_app/config/routes/app_routes.dart';
import 'package:widgets_app/config/themes/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "APP Widgets",
      routerConfig: router,
      theme: Themes(selectedColor: 1).getTheme(),
      debugShowCheckedModeBanner: false,

    );
  }
}
