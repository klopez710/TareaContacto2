import 'package:flutter/material.dart';

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final CircleAvatar avatar;
  final Title nombre;
  final Container acciones;
  final Card infoContacto;

  const PassArgumentsScreen(
      {super.key,
      required this.avatar,
      required this.nombre,
      required this.acciones,
      required this.infoContacto});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
