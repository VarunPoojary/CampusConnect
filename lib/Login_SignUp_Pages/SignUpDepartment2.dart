import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/Login_SignUp_Pages/SignUpTag1.dart';

class SignUpDepartment2 extends StatefulWidget {
  const SignUpDepartment2({Key? key}) : super(key: key);

  @override
  State<SignUpDepartment2> createState() => SignUpDepartment2State();
}

class SignUpDepartment2State extends State<SignUpDepartment2> {
  late List<Company> _companies;
  var choice = '';
  static String? Department;

  @override
  void initState() {
    super.initState();
    _companies = <Company>[
      const Company('    Computer Science    '),
      const Company('Information Technology'),
      const Company('          Mechanical          '),
      const Company('                 Civil                 '),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: h * 0.125),
              Padding(
                padding: const EdgeInsets.only(left: 37, right: 37),
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(maxWidth: w * 0.82, maxHeight: h * 0.07),
                  child: Text(
                    'Select tags that you seem interested in',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.0426),
              SizedBox(
                width: w,
                height: h * 0.590,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 37, right: 37),
                    child: Column(
                      children: [
                        Column(
                          children: companyWidget.toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: w,
                height: h * 0.05,
                child: Stack(
                  children: [
                    Positioned(
                      left: w * 0.817,
                      child: IconButton(
                        icon: Image.asset('assets/images/arrow2.png'),
                        color: const Color(0xFF4B4B4B),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpTag1()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Iterable<Widget> get companyWidget sync* {
    for (Company company in _companies) {
      yield Padding(
        padding: const EdgeInsets.all(1.0),
        child: ChoiceChip(
          // visualDensity: VisualDensity(horizontal: 4),
          labelPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          label: Text(company.name),
          backgroundColor: Colors.white,
          selectedColor: const Color(0xff4B4B4B),
          selected: (choice == company.name) ? true : false,
          labelStyle: TextStyle(
              color:
                  (choice == company.name) ? Colors.white : const Color(0xff4B4B4B)),
          onSelected: (bool selected) {
            Department = company.name;
            setState(
              () {
                choice = company.name;
              },
            );
          },
        ),
      );
    }
  }
}

class Company {
  const Company(this.name);

  final String name;
}
