import 'package:link/Home_Pages/HomeDashboardPage.dart';
import 'package:link/Home_Pages/HomeTimeTable.dart';
import 'package:link/Home_Pages/HomeProfilePage.dart';
import 'package:link/Home_Pages/HomeSearchPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// import 'package:link/Trash/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children =[
    HomeDashboardPage(),
    HomeSearchPage(),
    HomeTimeTable(),
    HomeProfilePage()
  ];

  void _navigateBottomNavBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child: _children[_selectedIndex],
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GNav(
          backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
          color: const Color.fromRGBO(7, 27, 55, 1),
          activeColor: Colors.white,
          tabBackgroundColor: Color.fromRGBO(7, 27, 55, 1),
          gap: 5,
          onTabChange: (index){
            _navigateBottomNavBar(index);
          },
          padding: const EdgeInsets.all(12),
          tabs: const [
            GButton(icon: Icons.home, text: 'NoticeBoard',),
            GButton(icon: Icons.search, text: 'Search',),
            GButton(icon: Icons.event, text: 'Time Table',),
            GButton(icon: Icons.person, text: 'Profile',),
          ],),
      ),
    );
  }
}
