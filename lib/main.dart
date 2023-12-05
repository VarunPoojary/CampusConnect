import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:link/Home_Pages/HomePage.dart';
import 'package:link/Login_SignUp_Pages/LetsGetStartedPage.dart';
import 'package:link/Login_SignUp_Pages/LoginPage.dart';
import 'package:link/Trash/login.dart';
import 'package:link/Trash/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // return Home();
              return HomePage();
            } else {
              // return LoginForm();
              // return LetsGetStartedPage();
              return LoginPage();
            }

          },
        ),
    );
  }
}