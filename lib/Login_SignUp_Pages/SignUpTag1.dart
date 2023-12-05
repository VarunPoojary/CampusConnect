import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/Login_SignUp_Pages/SignUpTag2.dart';

class SignUpTag1 extends StatefulWidget {
  const SignUpTag1({Key? key}) : super(key: key);

  @override
  State<SignUpTag1> createState() => SignUpTag1State();
}

class SignUpTag1State extends State<SignUpTag1> {

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child:Stack(
          children: [
            Positioned(
              top: h*0.25,
              left: w*0.18,
              right: w*0.15,
              child: ConstrainedBox(
                constraints:
                BoxConstraints(maxWidth: w * 0.50, maxHeight: h * 0.176),
                child: Text(
                  'Select tags that you seem interested in',
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
              top: h*0.65,
              left: w*0.463,
              child: IconButton(
                icon: Image.asset('assets/images/arrow2.png'),
                color: const Color(0xFF4B4B4B),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpTag2()),
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





