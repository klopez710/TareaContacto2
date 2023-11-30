import 'package:flutter/material.dart';

class Detalle extends StatelessWidget {
  const Detalle({
    super.key,
  });

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

class ScreenArguments {
  final CircleAvatar avatar;
  final Title nombre;
  final Container acciones;
  final Card infoContacto;

  ScreenArguments(this.avatar, this.nombre, this.acciones, this.infoContacto);
}
