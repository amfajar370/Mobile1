import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile1/mainpage.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
//bacground atas (dengan gambar)
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 440,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Asset/loginBackground.jpg'),
                    fit: BoxFit.fill),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 120, left: 10, right: 10),
                color: Color.fromARGB(255, 0, 195, 255).withOpacity(.80),
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Berbagi Rezeki",
                            style: GoogleFonts.acme(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)))),
                    const SizedBox(
                      width: 35,
                    ),
                    Text(
                      'Kelurga Cemara',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 5,
                      width: 90,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
              ),
            ),
          ),
//container Text Field
          Positioned(
            top: 270,
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                        spreadRadius: 7,
                        blurRadius: 15),
                  ]),
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Text(
                        'Masuk',
                        style: GoogleFonts.acme(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                  // Text field untuk login
                  Container(
                    margin: const EdgeInsets.only(top: 30, right: 10, left: 10),
                    child: Column(
                      children: [
                        loginTextfield(
                            Icons.person_2_rounded, 'User Name', false),
                        loginTextfield(
                            Icons.lock_open_rounded, 'Password', true),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Icon(
                                      Icons.square_outlined,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Ingatkan saya',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
//login button
          Positioned(
              top: 580,
              right: 0,
              left: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const mainPage()));
                  },
                  child: Container(
                    height: 75,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 187, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 4,
                              blurRadius: 6,
                              offset: const Offset(0, 2))
                        ]),
                    child: Center(
                      child: Text(
                        'Masuk',
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

// widget Text field
  Widget loginTextfield(IconData icon, String hintText, bool password) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: password,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 5, 4, 4)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
