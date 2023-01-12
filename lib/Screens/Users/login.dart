import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:yarab/Screens/Admins/adminPage.dart';
import 'package:yarab/Screens/Users/fitnessApp.dart';
import 'package:yarab/Widgets/squareTile.dart';
import 'package:yarab/services/googleSignInAuth.dart';

class myLogin extends StatefulWidget {
  const myLogin({super.key});

  @override
  State<myLogin> createState() => Login();
}
class Login extends State<myLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final Thekey = GlobalKey<FormState>();

  var options = [
    'User',
    'Admin',
  ];
  var _currentItemSelected = "User";
  var rool = "User";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        flexibleSpace: const Image(
          image: AssetImage('images/login.jpeg'),
          fit: BoxFit.cover,
          width: 250.00,
        ),
        toolbarHeight: 150,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35, top: 40),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 35, right: 35, top: 150),
              child: Form(
                key: Thekey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 3.0),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      style: TextStyle(color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 3.0),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        child: Text('LOGIN'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF9340BA),
                          minimumSize: Size(200, 50),
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          // final form = Thekey.currentState;
                          // if (form!.validate()) {
                          //   GoRouter.of(context).go('/login')
                          // }
                          signIn();
                        }),
                        SizedBox(height: 10,),
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Or continue with', style: TextStyle(color: Colors.grey[700])),
                       ),
                       SizedBox(height: 10,),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom( 
                          backgroundColor: Colors.white,
                          onPrimary: Colors.black,
                          minimumSize: Size(double.infinity,50),
                        ),
                       icon: FaIcon(FontAwesomeIcons.google, color:Colors.orange),
                        label: Text('Sign in with Google'),
                        onPressed: () async{
                        await AuthService().SignInWithGoogle();
                      },
                       ),


                        TextButton(
                        child: Text('Don’t have an account? Register!'),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(10, 115, 20, 20),
                          textStyle: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          foregroundColor: Colors.deepOrange,
                        ),
                        onPressed: () => GoRouter.of(context).go('/register'))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future signIn() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    }
     on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Email'),
        );
      },
    );
  }
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Password'),
        );
      },
    );
  }

}
