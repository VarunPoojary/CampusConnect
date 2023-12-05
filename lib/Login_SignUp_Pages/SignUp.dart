import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/Login_SignUp_Pages/SignUpDepartment1.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {

  var _index = 0;
  String? enrollmentNumber;
  String? name;
  int? pNumber;
  String? email;
  String? password;

  void _answerQuestion() {
    setState(() {
      _index = _index + 1;
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;


    const questions = [
      {
        'questionText': 'Registration Number',
        'hint': 'Registration Number',
        'warning': '*We need to know if you are a part of this university or not'
      },
      {
        'questionText': 'So, What’s your name?',
        'hint': 'Name',
        'warning': '*whoa whoa! we aren\’t going anywhere till we get your name'
      },
      {
        'questionText': 'Can we get your number?',
        'hint': 'Phone',
        'warning': '*Please enter your phone number before we proceed'
      },
      {
        'questionText': 'Please enter your mail ID',
        'hint': 'Email',
        'warning': '*Mandatory'
      },
      {
        'questionText': 'Please enter your password',
        'hint': 'Password',
        'warning': '*Mandatory'
      }
    ];




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
                  questions[_index]['questionText'].toString(),
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: questions[_index]['hint'].toString(),
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
                  questions[_index]['warning'].toString(),
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
                  if(_index > 3)
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpDepartment1()),
                      );
                    }
                  else
                  _answerQuestion();
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}





