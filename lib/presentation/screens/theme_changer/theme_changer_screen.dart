import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Theme"),
        actions: [
          IconButton(onPressed: (){
            ref.read(isDarkModeProvider.notifier).update((state) => !state,);
          }, icon: Icon(isDark? Icons.dark_mode_outlined: Icons.light_mode_outlined))
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      
      itemCount: colors.length,
      itemBuilder: (context, index) {
        
        
        final color = colors[index];

        return RadioListTile(
          title: Text("Este color", style: TextStyle(color: color),),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: selectedColor, 
          onChanged: (value){
            ref.read(selectedColorProvider.notifier).update((state) => index,);
          });
    },);
  }
}