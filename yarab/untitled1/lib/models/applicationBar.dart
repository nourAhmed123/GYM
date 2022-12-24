import 'package:flutter/material.dart';
import 'package:yarab/Screens/contactUs.dart';
import 'package:yarab/Screens/Users/fitnessApp.dart';
import 'package:yarab/Screens/profile.dart';
import 'package:yarab/mySessions.dart';
import 'package:yarab/Screens/Users/welcomepage.dart';

class AdminApplicationBar extends StatefulWidget {
   AdminApplicationBar({Key? key}) : super(key: key);

  @override
  _AdminApplicationBar createState() => _AdminApplicationBar();
}
class _AdminApplicationBar extends State<AdminApplicationBar> {
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(


      appBar: AppBar(
        backgroundColor: Color(0xFF9340BA),
        title: Text('Class Booking'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF9340BA),
              ),
              accountName: Text("VIBES GYM",style: TextStyle( fontSize: 21, fontFamily: 'Poppins')),
              accountEmail: Text(''), ),
            ListTile(
              leading:Icon(Icons.home),
              title:const Text('Home',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const FitnessApp()));
              },
            ),
            ListTile(
              leading:Icon(Icons.person),
              title:const Text('Profile',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
            ListTile(
              leading:Icon(Icons.info_outline),
              title:const Text('About us',style: TextStyle(fontSize: 17)),
              onTap: (){
                showAboutDialog(context: context,applicationIcon: Image.asset("images/Logo.PNG",width: 70,height:70),
                    applicationName: "Vibes Fitness app",
                    children:<Widget>[
                      Text('Vibes Gym offering a dynamic range of fitness classes and health services.Classes include but are not limited to: flexibility, Boxing,  Yoga, spa services '),
                      Text('Moreover, You can Schedule all your classes online by one click '),

                    ]


                );

              },
            ),
            ListTile(
              leading:Icon(Icons.phone),
              title:const Text('Contact Us',style: TextStyle(fontSize: 17)),
              onTap: () { Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  ContactUs()));
              },
            ),
            ListTile(
              leading:Icon(Icons.accessibility_new),
              title:const Text('My Sessions',style: TextStyle(fontSize: 17)),
              onTap: () { Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  MySessions()));
              },
            ),
            ListTile(
              leading:Icon(Icons.logout_outlined),
              title:const Text('Logout',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Welcomepage()),
              );
              },
            )
          ],
        ),
      ),

    ));

  }
}

