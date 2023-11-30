import 'package:contactos_app/screen/detalle.dart';
import 'package:contactos_app/screen/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        Detalle.routeName: (context) => const Detalle(),
      },
      home: const home(),
    );
  }
}


