import 'dart:developer';
// import 'package:campus_connect/HOME_PAGES/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:link/Login_SignUp_Pages/FacultyStudent.dart';

import '../services/authFunctions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //Check if needed
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
  // }
  //
  // @override
  // void dispose()
  // {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body:Form(
        key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: h * 0.12),
                SizedBox(
                  height: h * 0.056,
                  width: w * 0.121,
                  child: Image.asset('assets/images/linkLogo.png'),
                ),
                SizedBox(height: h * 0.168),
                Text(
                  'Login',
                  style: GoogleFonts.poppins(
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4B4B4B)),
                ),
                SizedBox(height: h * 0.080),
                Container(
                  width: w * 0.618,
                  height: h * 0.044,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xffF0F0F0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: w * 0.038, top: h *
                        0.01),
                    // child: TextFormField(
                    //   decoration: InputDecoration(
                    //     border: InputBorder.none,
                    //     hintText: 'Username',
                    //   ),
                    // ),
                    child: TextFormField(
                      key: ValueKey('email'),
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                      ),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Please Enter valid Email';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          email = value!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: h * 0.015),
                Container(
                  width: w * 0.618,
                  height: h * 0.044,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xffF0F0F0),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: w * 0.038, top: h * 0.01),
                        // child: TextField(
                        //   obscureText: true,
                        //   decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     hintText: 'Password',
                        //   ),
                        // ),
                        child: TextFormField(
                          key: ValueKey('password'),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                          ),
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Please Enter Password of min length 6';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            setState(() {
                              password = value!;
                            });
                          },
                        ),
                      ),

                      Positioned(
                        left: w * 0.521,
                        child: Container(
                          width: w * 0.097,
                          height: h * 0.0448,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                            child: Container(
                              color: Color.fromARGB(255, 73, 147, 93),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: w * 0.5,
                        bottom: h * 0.00224,
                        top: h * 0.00112,
                        child: IconButton(
                          icon: Image.asset('assets/images/arrow1.png'),
                          color: Colors.white,
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              AuthServices.signinUser(email, password, context);
                            }

                          },
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: h * 0.0539),

                Padding(
                  padding: EdgeInsets.only(left: w * 0.3),
                  child: Row(
                    children: [
                      Text(
                        'First Time?',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: const Color(0xff969696),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FacultyStudentPage()),
                            );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff969696),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
