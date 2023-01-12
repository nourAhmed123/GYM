import 'package:flutter/material.dart';
class ViewUsers extends StatelessWidget {
  final String ClassName;
  final String Duration;
  final String BookedSpots;

  const ViewUsers({Key? key,required this.ClassName,required this.Duration,required this.BookedSpots}) : super(key: key);

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
                      Text(Duration, textAlign: TextAlign.center , style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,),),
                      Text(BookedSpots, style: TextStyle(fontWeight: FontWeight.w800,color:Colors.purple, fontSize: 17),),
                      ],),],),

              Column(
                children:[
                  // Image.asset(
                  //   'images/soora.PNG',
                  //   height: 120,
                  //   width:120,
                  // ),
                  ElevatedButton(
                    child: Text('View Users'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF9340BA),
                      minimumSize: Size(30, 30),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),),
                    onPressed: () {
                    },),
                  ElevatedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Alert'),
                        content: const Text('Are you sure you want to cancel this session'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'No'),
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Yes'),
                            child: const Text('Yes'),
                          ),
                        ],
                      ),
                    ),
                    child: const Text('Cancel Session'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF9340BA),
                      minimumSize: Size(30, 30),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),),)],)],),
      ),);
  }
}
