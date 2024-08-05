import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/src/config/routes/app_routes.dart';
import 'package:widgets_app/src/config/themes/app_themes.dart';
import 'package:widgets_app/src/presentation/providers/theme_provider.dart';

void main() {
  runApp(
  const ProviderScope(child: MainApp())
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final selectedColor = ref.watch(selectedColorProvider);
    // final isDarkoMode = ref.watch(isDarkModeProvider),
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    
    return MaterialApp.router(
      title: "APP Widgets",
      routerConfig: router,
      theme: appTheme.getTheme(),
      debugShowCheckedModeBanner: false,

    );
  }
}
