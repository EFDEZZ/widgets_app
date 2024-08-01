import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Holi"),
        action: SnackBarAction(label: 'OK!', onPressed: (){}),
        duration: const Duration(seconds: 2),
        ),
    );
  }

  void openDialog( BuildContext context ){
      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (context) => AlertDialog(
        title: const Text("Dialogo"),
        content: const Text("Magna minim excepteur ipsum pariatur. Aute veniam amet consequat mollit culpa minim irure fugiat anim do velit. Consequat nisi do non ipsum in consectetur fugiat nulla ullamco. Occaecat id qui in proident aliqua consequat irure eu excepteur cupidatat do cillum esse. Proident magna do laboris aute ea commodo commodo quis excepteur et reprehenderit officia. Pariatur ad eu cupidatat labore dolor dolore proident sit enim. Veniam et ipsum mollit commodo Lorem ut ex. Consectetur est ipsum Lorem ipsum esse adipisicing amet aliqua cillum nulla."),
        actions: [
          TextButton(onPressed:() => Navigator.of(context).pop(), child: const Text("Cancelar")),
          FilledButton(onPressed: () => context.pop(), child: const Text("Aceptar")),
        ],
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Dialogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text("Irure adipisicing nostrud ad veniam adipisicing aliqua voluptate ad ex ut Lorem id ea. Id quis ut ipsum sint est anim ea aliquip sint et proident. Pariatur aliqua duis aute esse ad quis consequat mollit in. Esse cupidatat laborum irure dolore amet ipsum.")
                  ]
                );
              }, 
              child: const Text("Licencias Usadas"),
              ),
            FilledButton(
              onPressed: (){
                //TODO:
                openDialog(context);
              }, 
              child: const Text("Mostrar dialogo"),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context),
          label: const Text("Mostrar/Ocultar")),
    );
  }
}

