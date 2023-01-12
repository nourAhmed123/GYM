import 'package:flutter/material.dart';
class ViewSessions extends StatelessWidget {
  final String ClassName;
  final String Date;

  const ViewSessions({Key? key,required this.ClassName,required this.Date}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding( padding: const EdgeInsets.all(25),
      child: Container(

        padding: const EdgeInsets.all(34),

        decoration: BoxDecoration(

            color: Color(0xFFC0C0C0),
            borderRadius: BorderRadius.circular(60)
        ),

        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children:[

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ClassName, style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 24),),
                    Text(Date, textAlign: TextAlign.center , style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,),),
                  ],),],)],
    ),),);
  }
}
