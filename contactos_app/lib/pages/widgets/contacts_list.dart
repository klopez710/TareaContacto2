import 'package:contactos_app/main.dart';
import 'package:contactos_app/pages/details/ExtractArgumentsPage.dart';
import 'package:contactos_app/pages/listas/lists_contactsand_acctions.dart';
import "package:flutter/material.dart";
import 'dart:math';

class ContactsList extends StatelessWidget {
  ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: contactos.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                contactos[index]['nombre'],
                style: const TextStyle(fontSize: 17),
              ),
              leading: CircleAvatar(
                backgroundColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Text(contactos[index]['nombre'][0]),
              ),
              onTap: () {
                final numero = contactos[index]['telefono'];
                Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(
                        CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.blueAccent,
                            child: Center(
                              child: (Text(
                                contactos[index]['nombre'][0],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 70,
                                    fontWeight: FontWeight.w400),
                              )),
                            )),
                        Title(
                            color: Colors.black,
                            child: Text(
                              contactos[index]['nombre'],
                              style: TextStyle(fontSize: 20),
                            )),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 198, 198, 198),
                                      width: 1.0),
                                  bottom: BorderSide(
                                      color: Color.fromARGB(255, 198, 198, 198),
                                      width: 1.0))),
                          child: const Padding(
                            //tiente de hijo un pading para los margenes de los costados y arriba
                            padding: EdgeInsets.only(
                                top: 15.0,
                                left: 40.0,
                                right: 40.0,
                                bottom: 15.0),
                            child: Row(
                              // la linea hija es la que alberga los iconos y los nombres, es un renglon que tiene tres columnas hijas
                              // las columnas tienen dos hijos, uno de tipo icon y otro de tipo text
                              children: [
                                Column(
                                  // llamar
                                  children: [
                                    Icon(
                                      Icons.call_outlined,
                                      color: Color.fromARGB(255, 39, 99, 148),
                                      size: 30,
                                    ),
                                    Text(
                                      'Llamar',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 39, 99, 148),
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                                Spacer(), // un espacio entro los hijos
                                Column(
                                  // mensaje
                                  children: [
                                    Icon(
                                      Icons.message_outlined,
                                      color: Color.fromARGB(255, 39, 99, 148),
                                      size: 30,
                                    ),
                                    Text(
                                      'Mensaje de Texto',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 39, 99, 148),
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                                Spacer(), // espacio
                                Column(
                                  // video
                                  children: [
                                    Icon(
                                      Icons.videocam_outlined,
                                      color: Color.fromARGB(255, 39, 99, 148),
                                      size: 30,
                                    ),
                                    Text(
                                      'Video',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 39, 99, 148),
                                          fontSize: 15.0),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Text(
                                  'Información de Contacto',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              ListTile(
                                title: Text(numero),
                                subtitle: const Text('Celular'),
                                leading: const Icon(Icons.call_outlined),
                                trailing: const Wrap(
                                  spacing: 12.0,
                                  children: [
                                    Icon(Icons.videocam_outlined),
                                    Icon(Icons.message_outlined)
                                  ],
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: acciones.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text(acciones[index] + numero),
                                    leading: CircleAvatar(
                                      child: Image(
                                          image: index < 3
                                              ? const AssetImage(
                                                  'assets/images/logow.png')
                                              : const AssetImage(
                                                  'assets/images/logot.png')),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        )));
              },
            ),
          ],
        );
      },
    );
  }
}
