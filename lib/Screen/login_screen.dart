import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../UI components/Welcome_Login_SignUp UI components/buttons.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

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
        leading: IconButton(
            onPressed: (){
              // Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            //Sign in Text label
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20,),
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Sign In to your account",
                  style: TextStyle(
                      fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),


            SizedBox(height: 30,),

            // Email and Password TextField
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  makeInput(label: "Email/Username"),
                  SizedBox(height: 30,),
                  makeInput(label: "Password",obsecureText: true),
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

            SizedBox(height: 30,),

            // sign in button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: WelcoomeScreenButton(
                onTab: (){

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

            //google
          ],
        ),
      ),
    );
  }




  //TextField resuable..
  Widget makeInput({label, obsecureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 5,),
        TextField(
          obscureText: obsecureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
          ),
        ),

      ],
    );
  }
}


