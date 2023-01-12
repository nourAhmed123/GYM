import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yarab/models/Users/usermodel.dart';


Stream<List<Users>> readUsers() {
  return FirebaseFirestore.instance.collection('users').snapshots().map(
      (snapshot) =>
          snapshot.docs.map((doc) => Users.fromJson(doc.data())).toList());
}

Future<void> delete(String id) async {
  await FirebaseFirestore.instance.collection('users').doc(id).delete();
}
