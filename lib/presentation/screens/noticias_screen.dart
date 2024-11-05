import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro Screen'),
      ),
      body: const Center(
        child: Text('Registro Screen'),
      ),
    );
  }
}