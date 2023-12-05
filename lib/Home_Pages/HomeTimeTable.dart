import 'dart:developer';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';
import 'package:link/Home_Pages/HomeDashboardPage.dart';
import 'package:link/Home_Pages/HomeTimeTable.dart';
import 'package:link/Home_Pages/HomeProfilePage.dart';
import 'package:link/Home_Pages/HomeSearchPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeTimeTable extends StatefulWidget {
  const HomeTimeTable({Key? key}) : super(key: key);

  @override
  State<HomeTimeTable> createState() => HomeTimeTableState();
}

class HomeTimeTableState extends State<HomeTimeTable> {

  final List<Map<String, dynamic>> _allLectures = [
    //Monday
    {
      "id": 1,
      "lecName": "Deep Learning Lab",
      "block": "S",
      'class': '221',
      'time' : '9:10 AM - 11:00 AM'
    },
    {
      "id": 1,
      "lecName": "Deep Learning",
      "block": "S",
      'class': '515',
      'time' : '11:15 AM - 12:10 PM'
    },
    {
      "id": 1,
      "lecName": "Big Data Analytics",
      "block": "S",
      'class': '515',
      'time' : '12:10 PM - 01:05 PM'
    },
    {
      "id": 1,
      "lecName": "Information Security",
      "block": "S",
      'class': '515',
      'time' : '02:05 PM - 03:00 PM'
    },


    //Tuesday
    {
      "id": 2,
      "lecName": "Big Data Analytics Lab",
      "block": "S",
      'class': '221',
      'time' : '9:10 AM - 11:00 AM'
    },
    {
      "id": 2,
      "lecName": "Big Data Analytics",
      "block": "S",
      'class': '515',
      'time' : '11:15 AM - 12:10 PM'
    },
    {
      "id": 2,
      "lecName": "Deep Learning",
      "block": "S",
      'class': '515',
      'time' : '12:10 PM - 01:05 PM'
    },
    {
      "id": 2,
      "lecName": "Information Security",
      "block": "S",
      'class': '515',
      'time' : '02:05 PM - 03:00 PM'
    },


    //Wednesday
    {
      "id": 3,
      "lecName": "Elective 3",
      "block": "S",
      'class': '515',
      'time' : '9:10 AM - 11:00 AM'
    },
    {
      "id": 3,
      "lecName": "Deep Learning Lab",
      "block": "S",
      'class': '221',
      'time' : '11:15 AM - 01:05 PM'
    },
    {
      "id": 3,
      "lecName": "Information Security",
      "block": "S",
      'class': '515',
      'time' : '02:05 PM - 03:00 PM'
    },


    //Thursday
    {
      "id": 4,
      "lecName": "Deep Learning",
      "block": "S",
      'class': '515',
      'time' : '9:10 AM - 10:05 AM'
    },
    {
      "id": 4,
      "lecName": "Big Data Analytics",
      "block": "S",
      'class': '515',
      'time' : '10:05 AM - 11:00 AM'
    },
    {
      "id": 4,
      "lecName": "Big Data Analytics Lab",
      "block": "S",
      'class': '221',
      'time' : '11:15 AM - 01:05 PM'
    },
    {
      "id": 4,
      "lecName": "Information Security",
      "block": "S",
      'class': '515',
      'time' : '02:05 PM - 03:00 PM'
    },


    //Friday
    {
      "id": 5,
      "lecName": "Elective 2",
      "block": "S",
      'class': '515',
      'time' : '9:00 AM - 11:00 AM'
    },
    {
      "id": 5,
      "lecName": "Elective 3",
      "block": "S",
      'class': '515',
      'time' : '11:15 AM - 01:05 PM'
    },


    //Saturday
    {
      "id": 6,
      "lecName": "Elective 2",
      "block": "S",
      'class': '515',
      'time' : '9:00 AM - 11:00 AM'
    },



  ];
  List<Map<String, dynamic>> _dayLectures = [];
  DateTime selectedDate = DateTime.now();
  int day = DateTime.now().weekday;

  void _runFilter(int currDay) {
    List<Map<String, dynamic>> results = [];
    results = _allLectures.where((element) => element['id']==day).toList();
    setState(() {
      _dayLectures = results;
    });
  }


  initState() {
    _runFilter(day);
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    // DateTime selectedDate = DateTime.now();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: GoogleFonts.lato(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(7, 27, 55, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Today',
                  style: GoogleFonts.lato(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(7, 27, 55, 1),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                child: DatePicker(
                  DateTime.now(),
                  height: 100,
                  width: 80,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: const Color.fromRGBO(7, 27, 55, 1),
                  selectedTextColor: Colors.white,
                  dateTextStyle: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(7, 27, 55, 1),
                    ),
                  ),
                  dayTextStyle: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(7, 27, 55, 1),
                    ),
                  ),
                  monthTextStyle: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(7, 27, 55, 1),
                    ),
                  ),
                  onDateChange: (date){
                    day = date.weekday;
                    _runFilter(day);
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _dayLectures.length,

                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10, top: 10),
                    child: Container(
                      width: 330,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: const Color.fromRGBO(7, 27, 55, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 220,
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    _dayLectures[index]['lecName'],
                                    style: GoogleFonts.lato(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                            'assets/images/clockT.png'),
                                        height: 17,
                                        width: 17,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        _dayLectures[index]['time'],
                                        style: GoogleFonts.lato(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(
                              width: 10,
                            ),


                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      _dayLectures[index]['block'],
                                      style: GoogleFonts.lato(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(7, 27, 55, 1),
                                      ),
                                    ),
                                    Text(
                                      _dayLectures[index]['class'],
                                      style: GoogleFonts.lato(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(7, 27, 55, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),



                            // Text(
                            //   'Room N 203',
                            //   style: GoogleFonts.lato(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w400,
                            //     color: Colors.white,
                            //   ),
                            // ),


                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ),












            ],
          ),
      ),
    );
  }
}
