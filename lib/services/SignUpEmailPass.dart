// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import '../models/Users/usermodel.dart';

//   final nameController = TextEditingController();
//   final mobileController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//  Future signUp(Users userx) async {
//     final BuildContext context;
//     try {
//       UserCredential authusers =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailController.text,
//         password: passwordController.text,
//       );
//       User? userabc = authusers.user;
//       final db =
//           FirebaseFirestore.instance.collection("users").doc(userabc?.uid);
//       userx.role = "User";
//       userx.id = userabc!.uid;
//       final json = userx.toJson();
//       await db.set(json);
//     } on FirebaseAuthException catch (e) {
//       print(e);
//     }
//   }