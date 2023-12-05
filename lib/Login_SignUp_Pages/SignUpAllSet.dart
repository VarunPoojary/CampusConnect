import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/Home_Pages/HomePage.dart';
import 'package:link/Trash/home.dart';
import 'package:link/Login_SignUp_Pages/FacultyStudent.dart';
import 'package:link/Login_SignUp_Pages/SignUpName.dart';
import 'package:link/Login_SignUp_Pages/SignUpPhoneNumber.dart';
import 'package:link/Login_SignUp_Pages/SignUpEmail.dart';
import 'package:link/Login_SignUp_Pages/SignUpPassword.dart';
import 'package:link/Login_SignUp_Pages/SignUpEnrollmentNumber.dart';
import 'package:link/Login_SignUp_Pages/SignUpDepartment2.dart';

class SignUpAllSet extends StatefulWidget {
  const SignUpAllSet({Key? key}) : super(key: key);

  @override
  State<SignUpAllSet> createState() => SignUpAllSetState();
}

class SignUpAllSetState extends State<SignUpAllSet> {
  
  CollectionReference users = FirebaseFirestore.instance.collection("users");
  String checkUser = FacultyStudentPageState.user.toString();
  String checkName = SignUpNameState.Name.toString();
  String checkPhoneNumber = SignUpPhoneNumberState.pNumber.toString();
  String checkEmail = SignUpEmailState.Email.toString();
  String checkPassword = SignUpPasswordState.Password.toString();
  String checkEnrollmentNumber = SignUpEnrollmentNumberState.EnrollmentNumber.toString();
  String checkDepartment = SignUpDepartment2State.Department.toString();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: h * 0.409,
              left: w * 0.211,
              right: w * 0.18,
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: w * 0.50, maxHeight: h * 0.156),
                child: Text(
                  'You’re All Set!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    height: 1,
                    fontSize: 35,
                    color: const Color(0xff4B4B4B),
                  ),
                ),
              ),
            ),
            Positioned(
              top: h * 0.500,
              left: w * 0.410,
              child: IconButton(
                icon: Image.asset('assets/images/tick3.png'),
                iconSize: 55,
                color: const Color(0xFF4B4B4B),
                onPressed: () async {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: checkEmail,
                      password: checkPassword
                  );
                  await users.add({'Status': checkUser, 'Name': checkName, 'Phone Number': checkPhoneNumber, 'Email': checkEmail, 'Password': checkPassword, 'Enrollment Number':checkEnrollmentNumber, 'Department': checkDepartment});
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
