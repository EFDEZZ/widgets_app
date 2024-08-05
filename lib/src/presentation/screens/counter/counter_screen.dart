import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/src/presentation/providers/counter_screen_provider.dart';
import 'package:widgets_app/src/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool darkMode = ref.watch(isDarkModeProvider);
    final int clickCounter = ref.watch(counterProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Screen"),
          actions: [
            IconButton(
              icon: Icon(darkMode? Icons.dark_mode_outlined: Icons.light_mode_outlined),
              onPressed: (){
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            },  ),
          ],
        ),
        body: Center(
            child: Text(
          "Valor: $clickCounter",
          style: Theme.of(context).textTheme.titleLarge,
        )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              ref.read(counterProvider.notifier).state++;
            },
            child: const Icon(Icons.add)));
  }
}
