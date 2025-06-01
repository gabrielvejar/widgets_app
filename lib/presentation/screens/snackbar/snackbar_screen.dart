// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();    
    
    final snackBar = SnackBar(
      content: Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context,).showSnackBar(snackBar);
  }

  void openDialog (BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Estás seguro?'),
        content: Text('Non deserunt occaecat ea veniam sint id eu sint ex deserunt magna id occaecat excepteur. Non aliqua consectetur sint non. Lorem dolor pariatur duis sit cillum aute ex laboris deserunt quis.'),
        actions: [
          TextButton(onPressed: ()=>context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: ()=>context.pop(), child: Text('Aceptar'))
        ],
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars y diálogos')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: () {
              showAboutDialog(context: context,
                children: [
                  Text('Culpa est eu veniam cillum aute labore qui ullamco cillum culpa. Duis minim non elit nostrud sint labore anim ad. Consequat sint dolor sunt commodo aliqua. Sit dolor sunt qui sint tempor exercitation eiusmod Lorem do ad pariatur ipsum dolore ad. Sit ea dolore anim excepteur do proident officia irure consequat aliquip ex sint occaecat.')
                ]
              );
            }, child: Text('Licencias usadas')),
            FilledButton.tonal(onPressed: () {
              openDialog(context);
            }, child: Text('Mostrar diálogo'))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
