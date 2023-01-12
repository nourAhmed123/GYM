import 'package:flutter/material.dart';
import 'package:yarab/Screens/Users/fitnessApp.dart';
import '../Screens/Users/bookTile.dart';
import 'package:yarab/Screens/Users/contactUs.dart';
import 'package:yarab/Screens/profile.dart';
import 'package:yarab/Data/mySessions.dart';
import 'package:yarab/Screens/welcomepage.dart';

import '../Screens/Users/drawer_user.dart';

class bookpt extends StatefulWidget {
  const bookpt({Key? key}) : super(key: key);

  @override
  State<bookpt> createState() => _PTbooking();
}

class _PTbooking extends State<bookpt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9340BA),
        title: Text('Private Trainer Booking'),
        centerTitle: true,
      ),
      drawer: draweruser(),
      body: Column(
        children: [
          Book_Tile(
            Instructor: "Jumana",
            classname: "Full Body",
            Duration: "09:00 am-10:00 pm ",
            // Spots: "(Everyday)",
          ),
          Book_Tile(
            Instructor: "Nada",
            classname: "Cardio-Abs",
            Duration: "11:00 am-10:00 pm ",
            //  Spots: "(Sunday-Thursday)",
          ),
          Book_Tile(
            Instructor: "Shourk",
            classname: "Upper Body",
            Duration: "9:00 am-10:00 pm",
            //  Spots: "(EveryDay)",
          ),
          Book_Tile(
            Instructor: "Nouran",
            classname: "Lower Body",
            Duration: "09:00 am-10:00 am",
            //  Spots: "(Sunday-Friday)",
          ),
        ],
      ),
    );
  }
}