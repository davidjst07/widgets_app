import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);

  }

  void openDialog( BuildContext context) {

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Nisi in sunt eiusmod commodo. Mollit ipsum dolor eiusmod fugiat nostrud elit Lorem excepteur nisi culpa in anim culpa. Ipsum in ipsum nostrud eiusmod mollit sit elit laborum tempor ex labore exercitation ea. Incididunt non esse culpa deserunt tempor amet veniam qui culpa eiusmod.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),

      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Esse velit veniam sint irure aliquip nisi minim aute exercitation dolore. Cupidatat nisi ipsum culpa sint velit sit. Aliqua do sit labore incididunt mollit quis eiusmod quis. Esse ex consequat ipsum est anim culpa labore do. Reprehenderit ut consectetur irure id sunt aliqua elit voluptate nostrud cillum. Ad reprehenderit amet labore est consequat ipsum.')
                  ]
                  );
              }, child: const Text('Licencias usadas')
            ),
            
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar  diálogo'))
          ],
        ),
      ),


      floatingActionButton:  FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      )
    );
  }
}