import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/Login_SignUp_Pages/LoginPage.dart';

class LetsGetStartedPage extends StatefulWidget {
  const LetsGetStartedPage({Key? key}) : super(key: key);

  @override
  State<LetsGetStartedPage> createState() => _LetsGetStartedPageState();
}

class _LetsGetStartedPageState extends State<LetsGetStartedPage> {
  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: h*0.30),
                Text(
                  "Let's Get Started,",
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4B4B4B)),
                ),
                SizedBox(height: h*0.10),

                Positioned(
                  top: h*0.65,
                  left: w*0.463,
                  child: IconButton(
                    icon: Image.asset('assets/images/arrow2.png'),
                    color: const Color(0xFF4B4B4B),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                  ),
                ),

                SizedBox(height: h*0.168),

                SizedBox(
                  height: h*0.056,
                  width: w*0.121,
                  child: Image.asset('assets/images/linkLogo.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
