import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:library_app/helpers/show_snak_bar.dart';
import 'package:library_app/presentation/views/home_view.dart';

Future<void> createAccountFirbase(BuildContext context,{required String email ,required String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pushNamed(context, HomeView.routeName);  
      
    }  on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        showSnakBar(context, 'This email is already in use.');
      } else if (e.code == 'invalid-email') {
        showSnakBar(context, 'The email address is invalid.');
      } else if (e.code == 'weak-password') {
        showSnakBar(context, 'The password is too weak.');
      } else {
        showSnakBar(context, e.message ?? 'Something went wrong.');
      }
    }
  }
