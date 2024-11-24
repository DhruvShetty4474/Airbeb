import 'dart:developer';

import 'package:airbeb/Screen/login_screen.dart';
import 'package:flutter/material.dart';
import '../UI components/Welcome_Login_SignUp UI components/buttons.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEAF9EA),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Text("Welcome", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/fingerprint_login.png'),
                  ),
                ),
              ),
              Column(
                children: [
                  //LOGIN BUTTON...
                  WelcomeScreenButton(
                    onTab: (){
                      log('Logged in');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginScreen()),
                      );
                    },
                    label: 'Sign In',
                    backgroundColor: const Color(0xFF81C784),
                    foregroundColor: Colors.black,
                  ),
                  const SizedBox(height: 40,),
                  //SIGN UP BUTTON....
                  WelcomeScreenButton(
                    onTab: (){

                    },
                    label: 'Sign Up',
                    backgroundColor: const Color(0xFFC8E6C9),
                    foregroundColor: Colors.black,
                  ),
                  // SignUpButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
