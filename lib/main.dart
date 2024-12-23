import 'package:airbeb/Authetication/AuthPage.dart';
import 'package:airbeb/Screen/HomeScreen.dart';
import 'package:airbeb/Screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screen/welcome_Screen.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      // home: loginScreen(),
      home: AuthPage(),
      // home: Homescreen(),
    );

  }
}

