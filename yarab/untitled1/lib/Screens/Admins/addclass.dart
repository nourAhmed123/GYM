import 'package:flutter/material.dart';
import 'package:yarab/Screens/profile.dart';
import 'package:yarab/Screens/Admins/adminPage.dart';
import 'package:yarab/Screens/Users/welcomepage.dart';
//A form so the admin can add any class
class Addclass extends StatefulWidget {
  const Addclass({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}
class _MyRegisterState extends State<Addclass> {
  GlobalKey<FormState> thekey =GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFF9340BA),
            title: Text('Add a new class'),
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
                  leading:Icon(Icons.home_outlined),
                  title:const Text('Home',style: TextStyle( fontSize: 17)),
                  onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const AdminPage()));
                  },
                ),
                ListTile(
                  leading:Icon(Icons.person),
                  title:const Text('Profile',style: TextStyle(fontSize: 17)),
                  onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()));
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

        body: Stack(
          children: [
            Image.asset(
              'images/soora.PNG',
              height: 781,
              width: 400,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(left: 35, top: 60),
              child: const Text(
                'Add\nClasses',
                style: TextStyle(color: Colors.white, fontSize: 33,fontWeight: FontWeight.w700),

              ),

            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        key: thekey,
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Class name",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple, width: 3.0),
                                  borderRadius: BorderRadius.circular(2),)),),
                          const SizedBox(height: 40,),


                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: " Instructor",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple, width: 3.0),
                                  borderRadius: BorderRadius.circular(2),)),),
                          const SizedBox(height: 40,),

                          TextFormField(

                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Duration",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple, width: 3.0),
                                  borderRadius: BorderRadius.circular(2),)),),
                          const SizedBox(height: 40,),

                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "No.of slots ",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple, width: 3.0),
                                  borderRadius: BorderRadius.circular(2),)
                            ),

                          ),
                          const SizedBox(height: 40,),

                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 40),
                              child: ElevatedButton(
                                child: Text('Add'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                  minimumSize: Size(180, 43),
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 29,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                },
                              )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
