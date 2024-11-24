import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void LoginAuth(String email, String password, BuildContext context) async {
  try {
    // Attempt to sign in the user
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password);
    // On successful login, no need to explicitly navigate; the StreamBuilder will handle the redirect
  } catch (e) {
    // Handle the login error (show a message or log it)
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Login failed: ${e.toString()}')),
    );
  }
}
