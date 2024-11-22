import 'package:flutter/foundation.dart';
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/fingerprint_login.png'),
                  ),
                ),
              ),
              Column(
                children: [

                  //LOGIN BUTTON...
                  WelcoomeScreenButton(
                    onTab: (){

                    },
                    label: 'Sign In',
                    backgroundColor: const Color(0xFF81C784),
                    foregroundColor: Colors.black,
                  ),
                  // Container(
                  //   padding: const EdgeInsets.only(top: 3, left: 3),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50),
                  //     border: const Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //       top: BorderSide(color: Colors.black),
                  //       left: BorderSide(color: Colors.black),
                  //       right: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  //
                  //   child: WelcoomeScreenButton(
                  //     onTab: (){
                  //
                  //     },
                  //     label: 'Sign In',
                  //     backgroundColor: const Color(0xFF81C784),
                  //     foregroundColor: Colors.black,
                  //   ),
                  // ),

                  const SizedBox(height: 40,),


                  //SIGN UP BUTTON....
                  // Container(
                  //   padding: const EdgeInsets.only(top: 3, left: 3),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50),
                  //     border: const Border(
                  //       bottom: BorderSide(color: Colors.black),
                  //       top: BorderSide(color: Colors.black),
                  //       left: BorderSide(color: Colors.black),
                  //       right: BorderSide(color: Colors.black),
                  //     ),
                  //   ),
                  //   child: WelcoomeScreenButton(
                  //     onTab: (){
                  //
                  //     },
                  //     label: 'Sign Up',
                  //     backgroundColor: const Color(0xFFC8E6C9),
                  //     foregroundColor: Colors.black,
                  //   ),
                  // ),
                  WelcoomeScreenButton(
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
