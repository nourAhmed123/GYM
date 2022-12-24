import 'package:flutter/material.dart';
//function
Widget listItem(String bg,String title, int exercies, int time){
  return Container(
    //3ashan akhaleha 3areda
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 10.0),
    decoration: BoxDecoration(

      image: DecorationImage(
        image: NetworkImage(bg),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Color(0x60212121), BlendMode.darken),

      ),
          // border Curve
          borderRadius: BorderRadius.circular(15.0),
    ),



    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
            ),

          ),

          SizedBox(height: 10.0,
          ),
          Text(
            "${exercies} Exercices/Sessions",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),

          ),
          SizedBox(height: 4.0,
          ),
          Text(
            "${time} Minutes Per Day",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),

          ),

        ],
      ),
    ),
  );
}