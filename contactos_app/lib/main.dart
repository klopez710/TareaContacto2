import 'package:contactos_app/pages/details/ArgumentsPage.dart';
import 'package:contactos_app/pages/details/ExtractArgumentsPage.dart';
import 'package:contactos_app/pages/home.dart';
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
        ExtractArgumentsScreen.routeName: (context) =>
            const ExtractArgumentsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                avatar: args.avatar,
                nombre: args.nombre,
                acciones: args.acciones,
                infoContacto: args.infoContacto,
              );
            },
          );
        }
        assert(false, 'Necesita imprelentar ${settings.name}');
        return null;
      },
      home: const home(),
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
