import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/themes/themes.dart';

final isDarkModeProvider = StateProvider((ref) => false,);

final colorListProvider = StateProvider((ref) => colors,);

final selectedColorProvider = StateProvider((ref) => 0,);