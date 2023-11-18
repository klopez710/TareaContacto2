import 'package:contactos_app/main.dart';
import 'package:flutter/material.dart';

class ExtractArgumentsScreen extends StatelessWidget {
  const ExtractArgumentsScreen({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            args.avatar,
            const SizedBox(height: 20),
            args.nombre,
            const SizedBox(height: 20),
            args.acciones,
            const SizedBox(height: 10),
            args.infoContacto
          ],
        )),
      ),
    );
  }
}
