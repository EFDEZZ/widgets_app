import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/src/config/themes/app_themes.dart';

// final isDarkModeProvider = StateProvider((ref) => false,);

final colorListProvider = StateProvider((ref) => colors,);

final selectedColorProvider = StateProvider((ref) => 0,);

final stateNotifierPro = StateProvider((ref) => 0,);


// Un objeto de tipo Theme(Custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier(),);

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
  void changeColor ( int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}