import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/home_view.dart';
import 'package:library_app/helpers/show_snak_bar.dart';

Future<void> signWithEmailAndPassword(BuildContext context,{required String email ,required String password}) async {
    try {
       await FirebaseAuth
          .instance
          .signInWithEmailAndPassword(
              email: email, password: password);
    
      
      Navigator.pushNamed(context, HomeView.routeName);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnakBar(
            context, 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showSnakBar(context, 'Wrong password provided.');
      } else {
        showSnakBar(
            context, e.code );
      }
    }
  }
