import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:examen1/domain/models/lista.dart';

class ListaRepository {
  final String pathAssets = 'assets/documents/lista.json';

  Future<List<Lista>> getAllLista() async{
    List<Lista> response = [];
    final listaJson = await rootBundle.loadString(pathAssets);
    final List<dynamic> lista = json.decode(listaJson);
    response = lista.map((e) => Lista.fromJson(e)).toList();
    return response;
  }

}