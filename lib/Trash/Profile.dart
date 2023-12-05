// // // import 'package:campus_connect/Login_SignUp/login_page.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:simple_gradient_text/simple_gradient_text.dart';
// //
// // class HomeProfilePage extends StatefulWidget {
// //   const HomeProfilePage({Key? key}) : super(key: key);
// //
// //   @override
// //   State<HomeProfilePage> createState() => HomeProfilePageState();
// // }
// //
// // class HomeProfilePageState extends State<HomeProfilePage> {
// //   // int _selectedIndex = 0;
// //
// //   late List<Interests> _interests;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _interests = <Interests>[
// //       const Interests('Des'),
// //       const Interests('Flutter'),
// //       const Interests('UI/UX'),
// //       const Interests('Football'),
// //       const Interests('Guitar'),
// //       const Interests('Dev Ops'),
// //     ];
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final pnumber = '8788184001';
// //     var w = MediaQuery.of(context).size.width;
// //     var h = MediaQuery.of(context).size.height;
// //     return Scaffold(
// //       backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
// //       body: Stack(
// //         // scrollDirection: Axis.vertical,
// //         // child: SafeArea(
// //         //   child: Column(
// //             children: [
// //
// //               Container(
// //                 // color: Color.fromRGBO(7, 27, 55, 1),
// //                 width: w,
// //                 height: 50,
// //                 decoration: const BoxDecoration(
// //                   borderRadius: BorderRadius.only(
// //                     bottomLeft: Radius.circular(18.0),
// //                     bottomRight: Radius.circular(18.0),
// //                   ),
// //                   color: Color.fromRGBO(7, 27, 55, 1),
// //                 ),
// //                 child: Row(
// //                   children: [
// //                     Container(
// //                       child: FittedBox(
// //                         fit: BoxFit.fill,
// //                         child: IconButton(
// //                           icon: Image.asset('assets/images/Edit.png'),
// //                           color: Colors.white,
// //                           onPressed: () {
// //                             FlutterPhoneDirectCaller.callNumber(pnumber);
// //                           },
// //                         ),
// //                       ),
// //                       // height: 18,
// //                       // width: 18,
// //                     ),
// //                     const SizedBox(
// //                       width: 90,
// //                     ),
// //                     Text(
// //                       'My Profile',
// //                       style: GoogleFonts.poppins(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.w500,
// //                           color: Colors.white),
// //                     ),
// //                     const SizedBox(
// //                       width: 80,
// //                     ),
// //                     Container(
// //                       child: FittedBox(
// //                         fit: BoxFit.fill,
// //                         child: IconButton(
// //                           icon: Image.asset('assets/images/setting.png'),
// //                           color: Colors.white,
// //                           onPressed: () => showModalBottomSheet(
// //                             backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
// //                             context: context,
// //                             builder: (context) => Container(
// //                               height: 200,
// //                               width: w,
// //                               child: Column(
// //                                 children: [
// //                                   const SizedBox(height: 20),
// //                                   Text(
// //                                     'Settings',
// //                                     style: GoogleFonts.poppins(
// //                                       fontSize: 22,
// //                                       fontWeight: FontWeight.w600,
// //                                       color: const Color.fromRGBO(7, 27, 55, 1),
// //                                     ),
// //                                   ),
// //                                   const SizedBox(height: 15),
// //                                   ElevatedButton(
// //                                     style: ElevatedButton.styleFrom(
// //                                       backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
// //                                       shape: const StadiumBorder(),
// //                                     ),
// //                                     // onPressed: () {},
// //                                     onPressed: () async {
// //                                       await FirebaseAuth.instance.signOut();
// //                                     },
// //                                     child: Container(
// //                                       height: 50,
// //                                       width: 300,
// //                                       child: Row(
// //                                         children: [
// //                                           SizedBox(width: 10,),
// //
// //                                           Text(
// //                                             'Log Out',
// //                                             style: GoogleFonts.poppins(
// //                                               fontSize: 18,
// //                                               fontWeight: FontWeight.w500,
// //                                               color: Colors.white,
// //                                             ),
// //                                           ),
// //
// //                                           SizedBox(
// //                                             width: 200,
// //                                           ),
// //
// //                                           Image.asset('assets/images/logout.png'),
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   SizedBox(
// //                                     height: 10,
// //                                   ),
// //                                   ElevatedButton(
// //                                     style: ElevatedButton.styleFrom(
// //                                       backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
// //                                       shape: const StadiumBorder(),
// //                                     ),
// //                                     onPressed: () {},
// //                                     child: Container(
// //                                       height: 50,
// //                                       width: 300,
// //                                       child: Row(
// //                                         children: [
// //                                           SizedBox(width: 10,),
// //                                           Text(
// //                                             'Report',
// //                                             style: GoogleFonts.poppins(
// //                                               fontSize: 18,
// //                                               fontWeight: FontWeight.w500,
// //                                               color: Colors.white,
// //                                             ),
// //                                           ),
// //
// //                                           SizedBox(
// //                                             width: 210,
// //                                           ),
// //
// //                                           Image.asset('assets/images/report.png'),
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //
// //                         ),
// //                       ),
// //                       // height: 18,
// //                       // width: 18,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //
// //               Positioned(
// //                 top: 93,
// //                 left: 135,
// //                 child: SizedBox(
// //                   height: 90,
// //                   width: 90,
// //                   // color: Colors.red,
// //                   child: FittedBox(
// //                     fit: BoxFit.fill,
// //                     child: Image.asset('assets/images/ProfilePic.png'),
// //                   ),
// //                 ),
// //               ),
// //
// //               Positioned(
// //                 bottom: 10,
// //                 left: 20,
// //                 child: ElevatedButton(
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.white,
// //                     shape: const StadiumBorder(),
// //                     // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
// //                   ),
// //                   onPressed: () => showModalBottomSheet(
// //                     backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
// //                     context: context,
// //                     builder: (context) => Container(
// //                       height: 200,
// //                       width: w,
// //                       child: Column(
// //                         children: [
// //                           const SizedBox(height: 20),
// //                           Text(
// //                             'Contacts',
// //                             style: GoogleFonts.poppins(
// //                               fontSize: 22,
// //                               fontWeight: FontWeight.w600,
// //                               color: const Color.fromRGBO(7, 27, 55, 1),
// //                             ),
// //                           ),
// //                           const SizedBox(height: 15),
// //                           ElevatedButton(
// //                             style: ElevatedButton.styleFrom(
// //                               backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
// //                               shape: const StadiumBorder(),
// //                             ),
// //                             onPressed: () {},
// //                             child: Container(
// //                               height: 50,
// //                               width: 320,
// //                               child: Row(
// //                                 children: [
// //                                   Image.asset('assets/images/email.png'),
// //                                   SizedBox(
// //                                     width: 20,
// //                                   ),
// //                                   Container(
// //                                     child: Column(
// //                                       crossAxisAlignment: CrossAxisAlignment.start,
// //                                       children: [
// //                                         Text(
// //                                           'Email',
// //                                           style: GoogleFonts.poppins(
// //                                             fontSize: 16,
// //                                             fontWeight: FontWeight.w500,
// //                                             color: Colors.white,
// //                                           ),
// //                                         ),
// //                                         Text(
// //                                           'chanderia.10.garvin@gmail.com',
// //                                           style: GoogleFonts.poppins(
// //                                             fontSize: 12,
// //                                             fontWeight: FontWeight.w400,
// //                                             color: Colors.white,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                           SizedBox(
// //                             height: 10,
// //                           ),
// //                           ElevatedButton(
// //                             style: ElevatedButton.styleFrom(
// //                               backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
// //                               shape: const StadiumBorder(),
// //                             ),
// //                             onPressed: ()  {
// //                               // launch('tel:9545550710');
// //                               FlutterPhoneDirectCaller.callNumber(pnumber);
// //                             },
// //                             child: Container(
// //                               height: 50,
// //                               width: 320,
// //                               child: Row(
// //                                 children: [
// //                                   Image.asset('assets/images/phone.png'),
// //                                   SizedBox(
// //                                     width: 20,
// //                                   ),
// //                                   Container(
// //                                     child: Column(
// //                                       crossAxisAlignment: CrossAxisAlignment.start,
// //                                       children: [
// //                                         Text(
// //                                           'Phone',
// //                                           style: GoogleFonts.poppins(
// //                                             fontSize: 16,
// //                                             fontWeight: FontWeight.w500,
// //                                             color: Colors.white,
// //                                           ),
// //                                         ),
// //                                         Text(
// //                                           '$pnumber',
// //                                           style: GoogleFonts.poppins(
// //                                             fontSize: 12,
// //                                             fontWeight: FontWeight.w400,
// //                                             color: Colors.white,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                   child: Container(
// //                     height: 35,
// //                     width: 120,
// //                     child: Padding(
// //                       padding: const EdgeInsets.only(left: 30, top: 3),
// //                       child: Text(
// //                         'Contact',
// //                         style: GoogleFonts.poppins(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.w500,
// //                           color: const Color.fromRGBO(7, 27, 55, 1),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 bottom: 10,
// //                 right: 20,
// //                 child: ElevatedButton(
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
// //                     shape: const StadiumBorder(),
// //                     // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
// //                   ),
// //                   onPressed: () {},
// //                   child: Container(
// //                     height: 35,
// //                     width: 120,
// //                     child: Padding(
// //                       padding: const EdgeInsets.only(left: 30, top: 3),
// //                       child: Text(
// //                         'Connect',
// //                         style: GoogleFonts.poppins(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.w500,
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //         //   ),
// //         // ),
// //       ),
// //     );
// //   }
// //
// //   Iterable<Widget> get interestsWidget sync* {
// //     for (Interests interests in _interests) {
// //       yield Padding(
// //         padding: const EdgeInsets.only(left: 5),
// //         child: Chip(
// //           labelPadding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
// //           label: Text(interests.name),
// //           backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
// //           labelStyle: GoogleFonts.poppins(
// //             fontSize: 14,
// //             fontWeight: FontWeight.w500,
// //             color: Colors.white,
// //           ),
// //         ),
// //       );
// //     }
// //   }
// // }
// //
// // class Interests {
// //   const Interests(this.name);
// //
// //   final String name;
// // }
//
// // import 'package:campus_connect/Login_SignUp/login_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
//
//
// class HomeProfilePage extends StatefulWidget {
//   const HomeProfilePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomeProfilePage> createState() => HomeProfilePageState();
// }
//
// class HomeProfilePageState extends State<HomeProfilePage> {
//   late List<Interests> _interests;
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     _interests = <Interests>[
//       const Interests('Designing'),
//       const Interests('Flutter'),
//       const Interests('UI/UX'),
//       const Interests('Football'),
//       const Interests('Guitar'),
//       const Interests('Dev Ops'),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final user = FirebaseAuth.instance.currentUser;
//     var w = MediaQuery.of(context).size.width;
//     var h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
//       body: SafeArea(
//         child: Column(
//           children: [
//             //Identity Card
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   children: [
//                     //Profile Picture
//                     SizedBox(
//                       height: 100,
//                       width: 100,
//                       // color: Colors.red,
//                       child: FittedBox(
//                         fit: BoxFit.fill,
//                         // child: Image.asset('assets/images/ProfilePic.png'),
//                         child: CircleAvatar(
//                           backgroundImage:
//                               AssetImage('assets/images/ProfilePic.png'),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Garvin',
//                           style: GoogleFonts.lato(
//                             fontSize: 27,
//                             fontWeight: FontWeight.bold,
//                             color: const Color.fromRGBO(7, 27, 55, 1),
//                           ),
//                         ),
//                         Text(
//                           'MITU20BTCS0335',
//                           style: GoogleFonts.poppins(
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500,
//                             color: const Color.fromRGBO(7, 27, 55, 1),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           'MIT School of Engineering',
//                           style: GoogleFonts.poppins(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: const Color.fromRGBO(7, 27, 55, 1),
//                           ),
//                         ),
//                         Text(
//                           'Btech in CSE',
//                           style: GoogleFonts.poppins(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: const Color.fromRGBO(7, 27, 55, 1),
//                           ),
//                         ),
//                         Text(
//                           '2020 - 2024',
//                           style: GoogleFonts.poppins(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: const Color.fromRGBO(7, 27, 55, 1),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             //Attendance
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20, top: 20, bottom: 15),
//                     child: Text(
//                       'Attendance',
//                       style: GoogleFonts.lato(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: const Color.fromRGBO(7, 27, 55, 1),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       //Pie Chart
//                       Column(
//                         children: [
//                           CircularPercentIndicator(
//                             radius: 50,
//                             lineWidth: 15,
//                             backgroundColor: Colors.white,
//                             progressColor: const Color.fromRGBO(7, 27, 55, 1),
//                             percent: 0.75,
//                             center: Text(
//                               '75%',
//                               style: GoogleFonts.lato(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                                 color: const Color.fromRGBO(7, 27, 55, 1),
//                               ),
//                             ),
//                             circularStrokeCap: CircularStrokeCap.round,
//                             animation: true,
//                             animationDuration: 2000,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'Total Attendance',
//                             style: GoogleFonts.lato(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: const Color.fromRGBO(7, 27, 55, 1),
//                             ),
//                           ),
//                           Text(
//                             'Min. Attendance 75%',
//                             style: GoogleFonts.poppins(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       //Attendance Text
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Text(
//                                   'Deep Learning',
//                                   style: GoogleFonts.lato(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: const Color.fromRGBO(7, 27, 55, 1),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Text(
//                                   'Information Security',
//                                   style: GoogleFonts.lato(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: const Color.fromRGBO(7, 27, 55, 1),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Text(
//                                   'Big Data Analytics',
//                                   style: GoogleFonts.lato(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: const Color.fromRGBO(7, 27, 55, 1),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Text(
//                                   '75%',
//                                   style: GoogleFonts.lato(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: const Color.fromRGBO(7, 27, 55, 1),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Text(
//                                   '75%',
//                                   style: GoogleFonts.lato(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: const Color.fromRGBO(7, 27, 55, 1),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Text(
//                                   '75%',
//                                   style: GoogleFonts.lato(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: const Color.fromRGBO(7, 27, 55, 1),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             //Tags
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding:
//                     const EdgeInsets.only(left: 20, top: 20, bottom: 15),
//                     child: Text(
//                       'Tag',
//                       style: GoogleFonts.lato(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: const Color.fromRGBO(7, 27, 55, 1),
//                       ),
//                     ),
//
//                   ),
//                   SizedBox(
//                     width: w,
//                     height: 168,
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.vertical,
//                       child: Column(
//                         children: [
//                           Wrap(
//                             children: interestsWidget.toList(),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Iterable<Widget> get interestsWidget sync* {
//     for (Interests interests in _interests) {
//       yield Padding(
//         padding: const EdgeInsets.only(left: 5),
//         child: Chip(
//           labelPadding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
//           label: Text(interests.name),
//           backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
//           labelStyle: GoogleFonts.poppins(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.white,
//           ),
//         ),
//       );
//     }
//   }
// }
//
//
//
// class Interests {
//   const Interests(this.name);
//
//   final String name;
// }
//
