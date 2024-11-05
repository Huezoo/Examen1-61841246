import 'package:examen1/presentation/screens/Lista/widgets/lista_list.dart';
import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
  const ListaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: Center(
        child: listaList(),
      ),
    );
  }
}