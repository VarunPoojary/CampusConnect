import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSearchPage extends StatefulWidget {
  const HomeSearchPage({Key? key}) : super(key: key);

  @override
  State<HomeSearchPage> createState() => _HomeSearchPageState();
}

class _HomeSearchPageState extends State<HomeSearchPage> {



  final List<Map<String, dynamic>> _allUsers = [
    {
      "image":
      'assets/images/noProfile.jpeg',
      "id": 1,
      "name": "Prof. Dr. Ganesh Pathak",
      "des": "HoD CSE ",
      'phone': '9822400791',
      'email': 'ganesh.pathak@mituniversity.edu.in'
    },
    {
      "id": 2,
      "name": "Prof. Dr. Shraddha Phansalkar",
      "des": "HoD CSE",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '9970066854',
      'email': 'shraddha.phansalkar@mituniversity.edu.in'

    },
    {
      "id": 3,
      "name": "Prof. Sonali Deshpande",
      "des": "Training Placement Officer CSE",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '9881216544',
      'email': 'sonali.deshpande@mituniversity.edu.in'
    },
    {
      "id": 4,
      "name": "Varun Poojary",
      "des": "President of ACES",
      "image":
      'assets/images/varunProfile.jpeg',
      'phone': '9545550710',
      'email': 'varunnpoojary@gmail.com'
    },
    {
      "id": 5,
      "name": "Garvin Chanderia",
      "des": "President of Ideate",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '8788184001',
      'email': 'garvinchanderia9@gmail.com'
    },
    {
      "id": 6,
      "name": "Utkarsh Kokate",
      "des": "LY CSE Student",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '8857934634',
      'email': 'utkarshkokate31@gmail.com'
    },
    {
      "id": 7,
      "name": "Sneha Yadnik",
      "des": "LY CSE Student",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '9309578687',
      'email': 'snehayadnik@gmail.com'
    },
    {
      "id": 8,
      "name": "Rahul Bhosle",
      "des": "LY CSE Student",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '8408048952',
      'email': 'itsrahulbhosle@gmail.com'
    },
    {
      "id": 9,
      "name": "Chaitanya Vaidya",
      "des": "LY CSE Student",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '7303991660',
      'email': 'vaidyachaitanya@gmail.com'
    },
    {
      "id": 10,
      "name": "Arzoo Jiwani",
      "des": "LY CSE Student",
      "image":
      'assets/images/noProfile.jpeg',
      'phone': '7887716086',
      'email': 'jiwaniarzoo@gmail.com'
    },
  ];



  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  elevation: 1,
                  color: const Color.fromRGBO(7, 27, 55, 1),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 4,horizontal: 4),
                  // child: Container(
                  //   color: const Color.fromRGBO(7, 27, 55, 1),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                        AssetImage(_foundUsers[index]['image']),
                      ),
                      // title: Text(_foundUsers[index]['name']),
                      title: Text(_foundUsers[index]['name'],style: GoogleFonts.poppins(color: Colors.white,),),
                      subtitle: Text(_foundUsers[index]['des'],style: GoogleFonts.poppins(color: Colors.white,),),

                      onTap: () => showModalBottomSheet(
                        backgroundColor: const Color.fromRGBO(214, 227, 255, 1),
                        context: context,
                        builder: (context) => Container(
                          height: 200,
                          width: w,
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                'Contacts',
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(7, 27, 55, 1),
                                ),
                              ),
                              const SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
                                  shape: const StadiumBorder(),
                                ),
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  width: 320,
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/email.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Email',
                                              style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              _foundUsers[index]['email'],
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(7, 27, 55, 1),
                                  shape: const StadiumBorder(),
                                ),
                                onPressed: ()  {
                                  // launch('tel:9545550710');
                                  FlutterPhoneDirectCaller.callNumber(_foundUsers[index]['phone']);
                                },
                                child: Container(
                                  height: 50,
                                  width: 320,
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/phone.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Phone',
                                              style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              _foundUsers[index]['phone'],
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ),
              )
                  : const Text(
                'No results found Please try with diffrent search',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
