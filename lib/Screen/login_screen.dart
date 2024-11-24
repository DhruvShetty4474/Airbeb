import 'dart:developer';

import 'package:flutter/material.dart';
import '../Authetication/login_Auth.dart';
import '../UI components/Welcome_Login_SignUp UI components/buttons.dart';
import '../UI components/Welcome_Login_SignUp UI components/login_google_apple_icon.dart';
import '../UI components/Welcome_Login_SignUp UI components/textField.dart';

class loginScreen extends StatefulWidget {

  loginScreen({super.key,});
  //text editing controllers...
  final UserName_Email_Controller = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFEAF9EA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFC5E8C5),
        // Arrow button ( have to make it center)
        leading: IconButton(
            onPressed: (){
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)),
      ),


      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Sign in Text label
              Column(
                children: [
                  // const SizedBox(height: 20,),
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "Sign In to your account",
                    style: TextStyle(
                        fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
          
          
              const SizedBox(height: 30,),
          
              // Email and Password TextField
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    // makeInput(label: "Email/Username"),
                    const SizedBox(height: 50,),
                    LoginTextField(hintText: "Email/Username",obsecureText: false, controller: widget.UserName_Email_Controller,),
                    const SizedBox(height: 40,),
          
                    // makeInput(label: "Password",obsecureText: true),
                    LoginTextField(hintText: "Password",obsecureText: true, controller: widget.PasswordController,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot Password?", style: TextStyle(
                          color: Colors.grey[600],
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
          
              const SizedBox(height: 30,),
          
              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: WelcomeScreenButton(
                  onTab: (){
                    //need to be added....
                    String email = widget.UserName_Email_Controller.text;
                    String pass = widget.PasswordController.text;
                    log('The email: $email and Pass: $pass');
                    LoginAuth(email, pass, context);
                  },
                  label: 'Sign In',
                  backgroundColor: const Color(0xFF81C784),
                  foregroundColor: Colors.black,
                ),
              ),
          
          
              // or continue with
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.green[100],
                      )
                  ),
                  const Text("Or continue with"),
                  Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.green[100],
                      )
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              //google + apple sign in buttons...
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  LoginGoogleAppleIcon(ImagePath: 'assets/google_icon_login.png', size: 40,),
                  const SizedBox(width: 30,),
                  LoginGoogleAppleIcon(ImagePath: 'assets/apple-icon-login.png', size: 43,),
                  //apple button
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Not a member?',
                style: TextStyle(
                  color: Colors.grey[700],
                ),),
                const SizedBox(width: 5,),
                const Text('Register Now',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}


