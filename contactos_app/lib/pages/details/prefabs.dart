import 'dart:math';

import 'package:flutter/material.dart';


class Colores {
  
}

class Avatares {
  CircleAvatar get avatar {
    return CircleAvatar(
      backgroundColor: Colors.accents[Random().nextInt(Colors.accents.length)],
    );
  }
}

