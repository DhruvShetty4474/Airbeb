import 'package:airbeb/Screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screen/welcome_Screen.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //       apiKey: "AIzaSyB4Qh42GC3wtJecbIwzEjF_8UQ0l9lhdG8",
  //       authDomain: "airbebclone.firebaseapp.com",
  //       projectId: "airbebclone",
  //       storageBucket: "airbebclone.appspot.com",
  //       messagingSenderId: "596111289080",
  //       appId: "1:596111289080:web:75241bbe408f0e7b96690d",
  //       measurementId: "G-NJG5FJMYT4",
  //     ),
  //   );
  // } else {
  //   await Firebase.initializeApp();
  // }

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
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      home: loginScreen(),
    );
  }
}

