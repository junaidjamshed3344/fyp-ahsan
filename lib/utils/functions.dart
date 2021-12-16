import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Functions {
 
  static Future<String> signUp(context,
      {required String email,
      required String password,
      required String username}) async {
    try {
      FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      return "Verify";
      //return "User Registered";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "weak-password";
      } else if (e.code == 'email-already-in-use') {
        return "email-already-in-use";
      } else {
        return "registrationFailed";
      }
    } catch (e) {
      print(e);
      return "unknownerror";
    }
  }

  static Future<String> signIn(context,
      {required String email, required String password}) async {
    try {
      FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return "signInSuccessful";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "user-not-found";
      } else if (e.code == 'wrong-password') {
        return "wrong-password";
      } else {
        return "signIn-failed";
      }
    } catch (e) {
      print(e);
      return "unknownerror";
    }
  }

  static void showSnackBar(String message, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
      ),
      duration: Duration(seconds: 3),
    ));
  }


}
