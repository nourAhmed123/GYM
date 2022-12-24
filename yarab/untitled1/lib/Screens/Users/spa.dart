import 'package:flutter/material.dart';
import '../../BookSpa.dart';
import 'package:yarab/Screens/Users/fitnessApp.dart';
import 'package:yarab/Screens/profile.dart';
import 'package:yarab/Screens/contactUs.dart';
import 'package:yarab/mySessions.dart';
import 'package:yarab/Screens/Users/welcomepage.dart';

import 'drawer_user.dart';

class spa extends StatefulWidget {
  const spa({Key? key}) : super(key: key);

  @override
  State<spa> createState() => _spa();
}
class _spa extends State<spa> {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF9340BA),
        title: Text('Health Club'),
        centerTitle: true,
      ),
      drawer: draweruser(),
      //
      body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
      Column(

        children: const [
          Book_Spa(

            Name: "Bridal Package",
            Duration: "120 min",
            Price: "price:2500 LE" ,
            Description : "body scrub ,Swedish massage \n and Sea facial.",
            image:"images/shutterstock_1447852889-1-1-800x534.jpg" ,
          ),
           Book_Spa(
            Name: "Massage Package 1",
            Description :"Neck & shoulders",
            Duration: "30 min",
             Price: "price:400 LE" ,
          image: "images/spa-768x512.jpg",
           ),
           Book_Spa(
             Name: "Friends Package",
            Duration: "90 min",
             Price: "price:1000 LE" ,
           Description : "Sauna,Jacuzzi,back massage and \n Scrub.",
          image: "images/1.jpg"),
            Book_Spa(
              Name: "Relax Package",
            Duration: "60 min",
            Price: "price:500 LE" ,
             Description : "Jacuzzi,Scrub and Body Lotion",
                image: "images/Massage-Aromatherapy.jpeg"
           ),
        ],
      ),],),),);


  }
}