import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/services/authFunctions.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullname = '';
  bool login = true; // false original

  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ======== Full Name ========
              login
                  ? Container()
                  : TextFormField(
                key: ValueKey('fullname'),
                decoration: InputDecoration(
                  hintText: 'Enter Full Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Full Name';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    fullname = value!;
                  });
                },
              ),

              // ======== Email ========
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                ),
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please Enter valid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              // ======== Password ========
              TextFormField(
                key: ValueKey('password'),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                ),
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Please Enter Password of min length 6';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        login
                            ? AuthServices.signinUser(email, password, context)
                            : AuthServices.signupUser(
                            email, password, fullname, context);
                      }
                    },
                    child: Text(login ? 'Login' : 'Signup')),
              ),
              SizedBox(
                height: 10,
              ),


              // Padding(
              //   padding: EdgeInsets.only(left: w * 0.3),
              //   child: Row(
              //     children: [
              //       Text(
              //         'First Time?',
              //         style: GoogleFonts.poppins(
              //           fontSize: 15,
              //           color: const Color(0xff969696),
              //         ),
              //       ),
              //       TextButton(
              //         style: TextButton.styleFrom(
              //           textStyle: const TextStyle(fontSize: 15),
              //         ),
              //         onPressed: () {
              //           Navigator.pushNamed(
              //               context, 'faculty_student_page');
              //         },
              //         child: const Text(
              //           'Sign Up',
              //           style: TextStyle(
              //             decoration: TextDecoration.underline,
              //             color: Color(0xff969696),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),








              TextButton(
                  onPressed: () {
                    setState(() {
                      login = !login;
                    });
                  },
                  // onPressed: () {
                  //   Navigator.pushNamed(
                  //       context, 'faculty_student_page');
                  // },
                  child: Text(login
                      ? "Don't have an account? Signup"
                      : "Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}