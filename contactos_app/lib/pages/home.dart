import 'package:contactos_app/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic_rounded),
                    hintText: 'Busca contactos y lugares',
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29))),
              )),
          leadingWidth: double.infinity,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Widgets().homecolumn,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.dialpad_outlined,
          ),
        ));
  }
}
