import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.pop();
      }, child: const Icon(Icons.arrow_back_ios),),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text("Elevated Button")),
            const ElevatedButton(onPressed: null, child: Text("Elevated Disabled")),
            ElevatedButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.access_alarm), 
              label: const Text("Elevated Icon")),

            FilledButton(onPressed: (){}, child: const Text("Filled")),
            FilledButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.accessibility_sharp), 
              label: const Text("Filled Icon")),

            OutlinedButton(onPressed: (){}, child: const Text("Outlined")),
            OutlinedButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.outlined_flag_rounded), 
              label: const Text("Otulined Icon")),
            TextButton(onPressed: (){}, child: const Text("Text")),
            TextButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.ac_unit_rounded), 
              label: const Text("Text Icon")),
              const CustomButton(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: const WidgetStatePropertyAll(Colors.white),
              ), 
              icon: const Icon(Icons.app_registration_rounded)),

          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect( 
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text("Hola Mundo", style: TextStyle(color:Colors.white),)),
        ),
      ),
    );
  }
}