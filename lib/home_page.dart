import 'package:carousel_slider/carousel_slider.dart';
import 'package:dagadushet_app/about_us.dart';
import 'package:dagadushet_app/booking.dart';
import 'package:dagadushet_app/contact.dart';
import 'package:dagadushet_app/eseva.dart';
import 'package:dagadushet_app/rateus.dart';
import 'package:dagadushet_app/seepass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imgList = [
    "assets/home/img1.jpg",
    "assets/home/img2.jpg",
    "assets/home/img3.jpg",
    "assets/home/img2.jpg",
    "assets/home/img1.jpg",
    "assets/home/img2.jpg",
    "assets/home/img2.jpg"
  ];
  List coconutlist = [
    "assets/festival/coconut_festival/img2.jpg",
    "assets/festival/coconut_festival/img3.jpg",
    "assets/festival/coconut_festival/img4.jpg",
    "assets/festival/coconut_festival/img5.jpg",
  ];
  List grapesList = [
    "assets/festival/grapes_festival/img1.jpg",
    "assets/festival/grapes_festival/img2.jpg",
    "assets/festival/grapes_festival/img3.jpg",
    "assets/festival/grapes_festival/img4.jpg",
    "assets/festival/grapes_festival/img5.jpg",
    "assets/festival/grapes_festival/img6.jpg",
    "assets/festival/grapes_festival/img7.jpg",
    "assets/festival/grapes_festival/img8.jpg",
  ];
  List mangoList = [
    "assets/festival/mango_festival/img1.jpg",
    "assets/festival/mango_festival/img2.jpg",
    "assets/festival/mango_festival/img3.jpg",
    "assets/festival/mango_festival/img4.jpg",
    "assets/festival/mango_festival/img5.jpg",
    "assets/festival/mango_festival/img6.jpg",
    "assets/festival/mango_festival/img7.jpg",
  ];
  List mograList = [
    "assets/festival/mogra_festival/img1.jpg",
    "assets/festival/mogra_festival/img2.jpg",
    "assets/festival/mogra_festival/img3.jpg",
    "assets/festival/mogra_festival/img4.jpg",
    "assets/festival/mogra_festival/img5.jpg",
    "assets/festival/mogra_festival/img6.jpg",
    "assets/festival/mogra_festival/img7.jpg",
    "assets/festival/mogra_festival/img8.jpg",
  ];
  List sunflowerList = [
    "assets/festival/sunflower_festival/img1.jpg",
    "assets/festival/sunflower_festival/img2.jpg",
    "assets/festival/sunflower_festival/img3.jpg",
    "assets/festival/sunflower_festival/img4.jpg",
    "assets/festival/sunflower_festival/img5.jpg",
    "assets/festival/sunflower_festival/img6.jpg",
  ];
  List scheduleList = [
    "assets/home/daily_schedule.jpeg",
    "assets/home/festival_schedule.jpeg",
    "assets/home/upcoming_schedule.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 235, 11, 11),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF6F00), // Deep orange
                Color(0xFFFFD54F), // Warm yellow
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              // Drawer Header
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orangeAccent,
                      child: const Icon(
                        Icons.gesture,
                        size: 30,
                        color: Colors.white,
                      ), // Replace with your logo if available
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      "Ganpati App",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              // Pass Booking
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Booking();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.book_online, color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        "PASS BOOKING",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ///SEE PASS
               GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return  SeePassScreen();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.payment, color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        "SEE YOUR PASS",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Eseva
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Eseva();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.payment, color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        "ESEVA",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Contact
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Contact();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.contact_emergency_rounded,
                          color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        "CONTACT",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Rate Us
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Rateus();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.star, color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        "RATE US",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // About
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AboutUsScreen();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.person, color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        "ABOUT",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
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
      appBar: AppBar(
        title: const Text(
          "SHRIMANT DAGDUSHETH HALWAI GANPATI",
          style: TextStyle(
            fontFamily: 'SansitaSwashed', // Your desired font
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12
          ),
        ),
        centerTitle: true,
        backgroundColor:Colors.deepOrangeAccent[700], // Keeping the color theme festive
        elevation: 5.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 243, 108, 74)!, // Dark orange for the top
              Colors.orangeAccent, // Lighter orange for the bottom
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: 500,
                child: Text(
                  "Let us welcome Lord Ganpati into our hearts and home with open arms,and allow him to bless us with prosperity and success!!",
                  style: GoogleFonts.alef(
                      fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 200,
                child: CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(imgList[0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(imgList[1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(imgList[2]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(imgList[3]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(imgList[4]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              Text(
                "Schedule",
                style:
                    GoogleFonts.alef(fontSize: 23, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: scheduleList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Image.asset(
                        height: 100, fit: BoxFit.cover, scheduleList[index]);
                  },
                ),
              ),
              Text(
                "Festivals",
                style:
                    GoogleFonts.alef(fontSize: 23, fontWeight: FontWeight.w600),
              ),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(children: [
                    const Text(
                      "Mango Festival",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 50,
                    ),

                    ///MANGO FESTIVAL CARD
                    SizedBox(
                      height: 200,
                      child: CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mangoList[0]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mangoList[1]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mangoList[2]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mangoList[3]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mangoList[4]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: false,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ),
                  ])),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(children: [
                    const Text(
                      " Grapes Festival",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 50,
                    ),

                    ///GRAPES FESTIVAL CARD
                    SizedBox(
                      height: 200,
                      child: CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(grapesList[0]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(grapesList[1]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(grapesList[2]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(grapesList[3]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(grapesList[4]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: false,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ),
                  ])),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(children: [
                    const Text(
                      " Coconut Festival",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 50,
                    ),

                    ///COCONUT FESTIVAL CARD
                    SizedBox(
                      height: 200,
                      child: CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(coconutlist[0]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(coconutlist[1]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(coconutlist[2]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(coconutlist[3]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(coconutlist[0]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: false,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ),
                  ])),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(children: [
                    const Text(
                      " Mogra Festival",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 50,
                    ),

                    ///MOGRA FESTIVAL CARD
                    SizedBox(
                      height: 200,
                      child: CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mograList[0]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mograList[1]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mograList[2]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(mograList[3]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(coconutlist[0]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: false,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ),
                  ])),
            ]),
          ),
        ),
      ),
    );
  }
}
