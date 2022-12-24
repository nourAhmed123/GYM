import 'package:flutter/material.dart';
import 'package:yarab/Screens/Users/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}
class _MyRegisterState extends State<Register> {
  GlobalKey<FormState> Thekey =GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.purple,
        flexibleSpace: const Image(
        image: AssetImage('images/login.jpeg'),
        fit: BoxFit.cover,
        width:250.00, ),
        toolbarHeight: 150,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: const Text(
                'Create\nAccount',
                style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.w700),
              ),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.16),
                child: Form(
                  key: Thekey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Name",
                              enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple, width: 3.0),
                              borderRadius: BorderRadius.circular(2),)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Name';
                                }
                                return null;
                              },),
                              const SizedBox(height: 40,),


                            TextFormField(
                               style: TextStyle(color: Colors.black),
                               decoration: InputDecoration(
                               fillColor: Colors.grey.shade100,
                               filled: true,
                               hintText: "Mobile number",
                               enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.purple, width: 3.0),
                               borderRadius: BorderRadius.circular(2),)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Mobile Number';
                                }
                                return null;
                              },),
                               const SizedBox(height: 40,),

                            TextFormField(
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Email or contact info",
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.purple, width: 3.0),
                                    borderRadius: BorderRadius.circular(2),)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Email';
                                }
                                return null;
                              },),
                                   const SizedBox(height: 40,),

                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Password",
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.purple, width: 3.0),
                                    borderRadius: BorderRadius.circular(2),)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Password';
                                }
                                return null;
                              },
                                ),
                                   const SizedBox(height: 40,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.purple,
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                          final form = Thekey.currentState;
                                          if (form!.validate()) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>  myLogin()),

                                            );
                                                }

                                    },
                                    icon: Icon(Icons.arrow_forward,)),
                              )

                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
