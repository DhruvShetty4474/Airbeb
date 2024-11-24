import 'dart:developer';

import 'package:airbeb/Screen/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Screen/login_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Log the connection state to check if it's waiting or done
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('An error occurred: ${snapshot.error}'),
            );
          }

          // Check user authentication state
          if (snapshot.hasData) {
            var data = snapshot.data;
            log('snapshot data: $data');
            // User is logged in
            return  Homescreen();
          } else {
            // User is not logged in
            var data = snapshot.data;
            log('snapshot data: $data');
            return loginScreen();
          }
        },
      ),
    );
  }
}
