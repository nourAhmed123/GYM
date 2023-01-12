import 'package:flutter/material.dart';
import 'package:yarab/Screens/Users/contactUs.dart';
import 'package:yarab/Screens/profile.dart';
import 'package:yarab/Screens/Admins/viewSessions.dart';
import 'package:yarab/Screens/Users/fitnessApp.dart';
import 'package:yarab/Screens/welcomepage.dart';

import '../Screens/Users/drawer_user.dart';

class MySessions extends StatefulWidget {
  const MySessions({Key? key}) : super(key: key);

  @override
  State<MySessions> createState() => _MySessions();
}
class _MySessions extends State<MySessions> {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF9340BA),
        title: Text('My  History'),
        centerTitle: true,
      ),
      drawer: draweruser(),
      body: Column(children: const [
        ViewSessions(
          ClassName: "Boxing Class",
          Date: "9/5/2022" ,
        ),
        ViewSessions(
          ClassName: "Flexibility",
          Date: "19/7/2022" ,
        ),
        ViewSessions(
          ClassName: "Flexibility",
          Date: "21/10/2022" ,
        ),

      ],
      ),

    );
  }
}

