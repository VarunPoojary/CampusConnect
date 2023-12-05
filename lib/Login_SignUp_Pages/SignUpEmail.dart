import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/Login_SignUp_Pages/SignUpDepartment1.dart';
import 'package:link/Login_SignUp_Pages/SignUpPassword.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({Key? key}) : super(key: key);

  @override
  State<SignUpEmail> createState() => SignUpEmailState();
}

class SignUpEmailState extends State<SignUpEmail> {

  static String? Email;
  TextEditingController email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;






    return Scaffold(
      backgroundColor: Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child:Stack(
          children: [
            Positioned(
              top: h*0.25,
              left: w*0.18,
              right: w*0.15,
              child: ConstrainedBox(
                constraints:
                BoxConstraints(maxWidth: w * 0.50, maxHeight: h * 0.156),
                child: Text(
                  "Please enter your mail ID",
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
              top: h*0.47,
              left: w*0.15,
              child: Container(
                width: 255.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xffF0F0F0),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child:  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email Id",
                    ),
                  ),
                ),
              ),
            ),



            Positioned(
              top: h*0.53,
              left: w*0.17,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: w*0.600, maxHeight: h*0.05),
                child: Text(
                  "*Please enter your email for authentication purposes",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: const Color(0xffBB4646),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),


            Positioned(
              top: h*0.65,
              left: w*0.463,
              child: IconButton(
                icon: Image.asset('assets/images/arrow2.png'),
                color: const Color(0xFF4B4B4B),
                onPressed: () {
                  Email = email.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPassword()),
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





