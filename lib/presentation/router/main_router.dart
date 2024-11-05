import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:examen1/presentation/screens/index.dart';


final mainRouter = GoRouter( 
  initialLocation: '/home', routes: [
    GoRoute(
      path: 'home',
      builder: (context, state) => const HomeScreen(),
      name: 'home',
    ),
    GoRoute(
      path: '/noticias',
      builder: (context, state) => const NoticiasScreen(),
      name: 'noticias',
    ),
    GoRoute(
      path: '/lista',
      builder: (context, state) => const ListaScreen(),
    ),
  ],

);
