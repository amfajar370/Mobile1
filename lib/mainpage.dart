import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  Widget CategorySlide() {
    Widget category(String img, String text) {
      return Stack(children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(right: 13),
            height: 100,
            width: 135,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10, top: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        size: 24,
                        color: Colors.black,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Category',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                category('asset/plant_white_bg.png', 'Plant'),
                category('asset/lamp_white_bg.png', 'Lamp'),
                category('asset/chair_white_bg.png', 'Chair'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget hotItem() {
    Widget list(String img, String text) {
      return Container(
        child: Stack(
          children: [
            Container(
              width: 120,
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(img))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(137, 18, 243, 153).withOpacity(0.4)),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Hot Item',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                list('asset/plant_white_bg.png', 'Plant'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(153, 241, 240, 240),
      //appbar
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5),
            ],
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 153, 144, 59),
              Color.fromARGB(255, 221, 202, 115),
            ]),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 28,
                      ),
                      Text(
                        'Discover',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 28,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: CupertinoColors.white,
                              size: 30,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'What are you looking for?',
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.white60),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(140),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CategorySlide(),
            SizedBox(
              height: 10,
            ),
            hotItem()
          ],
        ),
      )),
      //bottom NavBar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 5),
          ],
        ),
        child: BottomNavigationBar(
            elevation: 0,
            currentIndex: 0,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black38,
            iconSize: 35,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}
