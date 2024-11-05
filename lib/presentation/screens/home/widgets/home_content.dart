import 'package:flutter/material.dart';

final homeContent = Column(
  children: <Widget>[
      Image.asset('assets/images/lista_imagen.jpg'),    
      const Padding(
      padding: EdgeInsets.all(32.0),
      child: Text(
        'Examen 1 - 61841246',
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    ),
  ],
);