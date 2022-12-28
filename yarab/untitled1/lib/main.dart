import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yarab/Screens/Users/fitnessApp.dart';
import 'package:yarab/Screens/Users/login.dart';
import 'package:yarab/Screens/Users/register.dart';
import 'package:yarab/Screens/Users/welcomepage.dart';
import 'firebase_options.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          routes: <GoRoute>[
            GoRoute(
              path: 'register',
              builder: (BuildContext context, GoRouterState state) =>
                  const Register(),
            ),
            GoRoute(
              path: 'login',
              builder: (BuildContext context, GoRouterState state) =>
                  const myLogin(),
            ),
            GoRoute(
              path: 'loginAsAdmin',
              builder: (BuildContext context, GoRouterState state) =>
                  const myLogin(),
            ),
            GoRoute(
              path: 'fitness',
              builder: (BuildContext context, GoRouterState state) =>
                  const FitnessApp(),
            ),
          ],
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const Welcomepage(),
        ),
      ],
    );
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
