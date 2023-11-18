import 'package:contactos_app/pages/widgets/contacts_list.dart';
import 'package:flutter/material.dart';

class Widgets {
  Column get homecolumn {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            shape: StadiumBorder(),
            onPressed: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.person_add_alt,
                  color: Colors.lightBlueAccent,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Crear contacto nuevo',
                  style: TextStyle(fontSize: 17, color: Colors.lightBlue),
                )
              ],
            ),
          ),
        ),
        ContactsList()
      ],
    );
  }
}
