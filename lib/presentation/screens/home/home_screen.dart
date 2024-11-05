import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:examen1/presentation/screens/home/widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('App CEUTEC'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            homeContent,

          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu de opciones'),
              ),
              ListTile(
                title: const Text('Inicio'),
                onTap: () {
                  context.push('/home');
                },
              ),
              ListTile(
                title: const Text('Noticias'),
                onTap: () {
                  context.push('/noticias');
                },
              ),
              ListTile(
                title: const Text('Lista de Tareas'),
                onTap: () {
                  context.push('/lista');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}