import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/routes/app_routes.dart';
import 'package:widgets_app/config/themes/themes.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(
  const ProviderScope(child: MainApp())
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final selectedColor = ref.watch(selectedColorProvider);
    final isDarkoMode = ref.watch(isDarkModeProvider);

    return MaterialApp.router(
      title: "APP Widgets",
      routerConfig: router,
      theme: Themes(selectedColor: selectedColor, isDarkMode:isDarkoMode ).getTheme(),
      debugShowCheckedModeBanner: false,

    );
  }
}
