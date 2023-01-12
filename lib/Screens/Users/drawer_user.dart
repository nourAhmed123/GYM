import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yarab/Screens/Admins/adminPage.dart';
import '../../Data/mySessions.dart';
import 'contactUs.dart';
import '../profile.dart';
import '../welcomepage.dart';
import 'fitnessApp.dart';


import 'package:go_router/go_router.dart';

class draweruser extends StatefulWidget {
  const draweruser({Key? key}) : super(key: key);

  @override
  State<draweruser> createState() => _draweruserState();
}

class _draweruserState extends State<draweruser> {
   final FirebaseFirestore _adminuser = FirebaseFirestore.instance;
  final _currentuser = FirebaseAuth.instance.currentUser;
  String role = " ";
  bool? isAdmin;
  Future Adminrole() async {
    await _adminuser
        .collection('users')
        .doc(_currentuser!.uid)
        .get()
        .then((value) {
      role = value.data()!['role'];
      if (role == "admin") {
        setState(() {
          isAdmin = true;
        });
      } else {
        setState(() {
          isAdmin = false;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF9340BA),
            ),
            accountName: Text("VIBES GYM",
                style: TextStyle(fontSize: 21, fontFamily: 'Poppins')),
            accountEmail: Text(''),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home', style: TextStyle(fontSize: 17)),
            onTap: () {
              context.push('/toWelcome');
            },
          ),
           (isAdmin == false)
              ? Container()
              : ListTile(
                  leading: Icon(Icons.home),
                  title:
                      const Text('Admin page', style: TextStyle(fontSize: 17)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminPage()));
                  },
                ),
          ListTile(
              leading: Icon(Icons.person),
              title: const Text('Profile', style: TextStyle(fontSize: 17)),
              onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => const Profile()));

                context.push('/profile');
              }),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('About us', style: TextStyle(fontSize: 17)),
            onTap: () {
              showAboutDialog(
                  context: context,
                  applicationIcon:
                      Image.asset("images/Logo.PNG", width: 70, height: 70),
                  applicationName: "Vibes Fitness app",
                  children: <Widget>[
                    Text(
                        'Vibes Gym offering a dynamic range of fitness classes and health services.Classes include but are not limited to: flexibility, Boxing,  Yoga, spa services '),
                    Text(
                        'Moreover, You can Schedule all your classes online by one click '),
                  ]);
            },
          ),
          ListTile(
              leading: Icon(Icons.phone),
              title: const Text('Contact Us', style: TextStyle(fontSize: 17)),
              onTap: () {
                context.push('/ContactUs');
              }),
          // ListTile(
          //     leading: Icon(Icons.accessibility_new),
          //     title: const Text('My Sessions', style: TextStyle(fontSize: 17)),
          //     onTap: () {

          //       context.go('/MySessions');
          //     }),
          ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: const Text('Nutrition', style: TextStyle(fontSize: 17)),
            onTap: () {
              context.go('/Nutrition');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: const Text('Logout', style: TextStyle(fontSize: 17)),
            onTap: () {
              context.go('/WelcomePage');
            },
          )
        ],
      ),
    );
  }
}
