import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeProfilePage extends StatefulWidget {
  const HomeProfilePage({Key? key}) : super(key: key);

  @override
  State<HomeProfilePage> createState() => HomeProfilePageState();
}

class HomeProfilePageState extends State<HomeProfilePage> {
  late List<Interests> _interests;

  @override
  void initState() {
    super.initState();
    _interests = <Interests>[
      const Interests('Machine Learning'),
      const Interests('Flutter'),
      const Interests('UI/UX'),
      const Interests('Boxing'),
      const Interests('Guitar'),
      const Interests('Dev Ops'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Identity Card
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(7, 27, 55, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: const Color.fromRGBO(7, 27, 55, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          //Profile Picture
                          const SizedBox(
                            height: 100,
                            width: 100,
                            // color: Colors.red,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // child: Image.asset('assets/images/ProfilePic.png'),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/varunProfile.jpeg'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Varun Poojary',
                                style: GoogleFonts.lato(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  // color: const Color.fromRGBO(7, 27, 55, 1),
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'MITU20BTCS0335',
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  // color: const Color.fromRGBO(7, 27, 55, 1),
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'MIT School of Engineering',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  // color: const Color.fromRGBO(7, 27, 55, 1),
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Btech in CSE',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  // color: const Color.fromRGBO(7, 27, 55, 1),
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '2020 - 2024',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  // color: const Color.fromRGBO(7, 27, 55, 1),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Attendance
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                  child: Text(
                    'Attendance',
                    style: GoogleFonts.lato(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(7, 27, 55, 1),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Pie Chart
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 15,
                          backgroundColor: Colors.white,
                          progressColor: const Color.fromRGBO(7, 27, 55, 1),
                          percent: 0.75,
                          center: Text(
                            '75%',
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(7, 27, 55, 1),
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          animation: true,
                          animationDuration: 2000,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Total Attendance',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(7, 27, 55, 1),
                          ),
                        ),
                        Text(
                          'Min. Attendance 75%',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //Attendance Text
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Deep Learning',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(7, 27, 55, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Information Security',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(7, 27, 55, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Big Data Analytics',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(7, 27, 55, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '75%',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(7, 27, 55, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '75%',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(7, 27, 55, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '75%',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(7, 27, 55, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            //Tags
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                  child: Text(
                    'Tag',
                    style: GoogleFonts.lato(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(7, 27, 55, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: w,
                  height: 168,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Wrap(
                          children: interestsWidget.toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
                      shape: const StadiumBorder(),
                      // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    ),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                    },
                    child: SizedBox(
                      height: 40,
                      width: 290,
                      child: Center(
                        child: Text(
                          'Logout',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Iterable<Widget> get interestsWidget sync* {
    for (Interests interests in _interests) {
      yield Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Chip(
          labelPadding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          label: Text(interests.name),
          backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
          labelStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      );
    }
  }
}

class Interests {
  const Interests(this.name);

  final String name;
}


