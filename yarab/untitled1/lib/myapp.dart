import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yarab/Screens/Users/login.dart';

import 'Screens/Users/fitnessApp.dart';

class Myapp extends StatelessWidget {
  Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _router.routerDelegate,
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
            path: 'page2',
            builder: (BuildContext context, GoRouterState state) =>
                const FitnessApp(),
          ),
        ],
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const myLogin(),
      ),
    ],
  );
}
