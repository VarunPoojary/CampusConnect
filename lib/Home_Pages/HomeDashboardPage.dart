// import 'package:campus_connect/Login_SignUp/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDashboardPage extends StatelessWidget {
  const HomeDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Varun',
                  style: GoogleFonts.lato(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(7, 27, 55, 1),
                  ),
                ),
                Text(
                  'Welcome to your Link',
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(7, 27, 55, 1),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Post 1
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            // color: Colors.red,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // child: Image.asset('assets/images/ProfilePic.png'),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/ideateDp.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'IDEATE',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '@ideate',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Liked the first chapter?',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      Text(
                        'Get onboard to make the second chapter more exciting!',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      Text(
                        'IDEATE Registrations Open Now!',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 320,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                          // color: Colors.red,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/images/ideatePost.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Center(
                          child: Container(
                            height: 2,
                            width: 320,
                            color: const Color.fromRGBO(7, 27, 55, 1),

                          ),
                        ),
                      )
                    ],
                  ),
                ),


                //Post 2
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            // color: Colors.red,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // child: Image.asset('assets/images/ProfilePic.png'),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/acesDp.jpeg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'ACES',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '@aces',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Be Part of ACES!!',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      Text(
                        'Join the Association of Computer Science Branch.',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      Text(
                        'ACES Registrations Open Now!',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 320,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                          // color: Colors.red,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/images/acesPost.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Center(
                          child: Container(
                            height: 2,
                            width: 320,
                            color: const Color.fromRGBO(7, 27, 55, 1),

                          ),
                        ),
                      )
                    ],
                  ),
                ),


                //Post 3
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            // color: Colors.red,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // child: Image.asset('assets/images/ProfilePic.png'),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/c3Dp.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cloud Computing Club',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '@ccc',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Liked the first chapter?',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      Text(
                        'Get onboard to make the second chapter more exciting!',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      Text(
                        'CCC Registrations Open Now!',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(7, 27, 55, 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 320,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                          // color: Colors.red,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/images/c3Post.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Center(
                          child: Container(
                            height: 2,
                            width: 320,
                            color: const Color.fromRGBO(7, 27, 55, 1),

                          ),
                        ),
                      )
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
