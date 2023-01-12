import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yarab/Data/classbooking.dart';
import 'package:yarab/Data/mySessions.dart';
import 'package:yarab/Screens/Admins/loginAdmin.dart';
import 'package:yarab/Screens/Users/allClasses.dart';
import 'package:yarab/Screens/Users/contactUs.dart';
import 'package:yarab/Screens/Users/fitnessApp.dart';
import 'package:yarab/Screens/Users/login.dart';
import 'package:yarab/Screens/Users/register.dart';
import 'package:yarab/Screens/profile.dart';
import 'package:yarab/Screens/welcomepage.dart';
import 'package:yarab/services/auth.dart';
import 'Data/spa.dart';
import 'Screens/Users/nutrition.dart';
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
                  const Authpage(),
            ),
            GoRoute(
              path: 'loginAsAdmin',
              builder: (BuildContext context, GoRouterState state) =>
                  const LoginAdmin(),
            ),
            GoRoute(
              path: 'toWelcome',
              builder: (BuildContext context, GoRouterState state) =>
                  const FitnessApp(),
            ),
            GoRoute(
              path: 'profile',
              builder: (BuildContext context, GoRouterState state) =>
                  const Profile(),
            ),
            GoRoute(
              path: 'ContactUs',
              builder: (BuildContext context, GoRouterState state) =>
                  const ContactUs(),
            ),
            GoRoute(
              path: 'MySessions',
              builder: (BuildContext context, GoRouterState state) =>
                  const MySessions(),
            ),
            GoRoute(
              path: 'Nutrition',
              builder: (BuildContext context, GoRouterState state) =>
                  const Homepage(),
            ),
            GoRoute(
              path: 'WelcomePage',
              builder: (BuildContext context, GoRouterState state) =>
                  const Welcomepage(),
            ),
            GoRoute(
              path: 'Spa',
              builder: (BuildContext context, GoRouterState state) =>
                  const spa(),
            ),
            GoRoute(
              path: 'Booking',
              builder: (BuildContext context, GoRouterState state) =>
                  const Booking(),
            ),
          ],
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const AllClasses(),
        ),
      ],
    );
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
