import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/Login_SignUp_Pages/SignUpAllSet.dart';

class SignUpTag2 extends StatefulWidget {
  const SignUpTag2({Key? key}) : super(key: key);

  @override
  State<SignUpTag2> createState() => SignUpTag2State();
}

class SignUpTag2State extends State<SignUpTag2> {
  late List<Company> _companies;
  late List<String> _filters;

  @override
  void initState() {
    super.initState();
    _filters = <String>[];
    _companies = <Company>[
      const Company('Designing'),
      const Company('Flutter'),
      const Company('UI/UX'),
      const Company('Design Thinking'),
      const Company('Java'),
      const Company('C++'),
      const Company('Python'),
      const Company('Machine Learning'),
      const Company('Blockchain'),
      const Company('Guitar'),
      const Company('Drums'),
      const Company('Piano'),
      const Company('Football'),
      const Company('Cricket'),
      const Company('Boxing'),
      const Company('DSA'),
      const Company('C'),
      const Company('HTML'),
      const Company('CSS'),
      const Company('Javascript'),
      const Company('React'),
      const Company('Dev Ops'),
      const Company('Adobe'),
      const Company('Sony'),
      const Company('Google'),
      const Company('Microsoft'),
      const Company('Adobe'),
      const Company('Sony'),
      const Company('Google'),
      const Company('Microsoft'),
      const Company('Adobe'),
      const Company('Sony'),
      const Company('Google'),
      const Company('Microsoft'),
      const Company('Adobe'),
      const Company('Sony'),
      const Company('Google'),
      const Company('Microsoft'),
      const Company('Adobe'),
      const Company('Sony'),
      const Company('Google'),
      const Company('Microsoft'),
      const Company('Adobe'),
      const Company('Sony'),
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
                        Wrap(
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
                      left: w*0.817,
                      child: IconButton(
                        icon: Image.asset('assets/images/arrow2.png'),
                        color: const Color(0xFF4B4B4B),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpAllSet()),
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
        padding: const EdgeInsets.only(left: 5),
        child: FilterChip(
          labelPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          label: Text(company.name),
          backgroundColor: Colors.white,
          selectedColor: Color(0xff4B4B4B),
          showCheckmark: false,
          selected: _filters.contains(company.name),
          labelStyle: TextStyle(color: _filters.contains(company.name) ? Colors.white : Color(0xff4B4B4B)),
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _filters.add(company.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == company.name;
                });
              }
            });
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
