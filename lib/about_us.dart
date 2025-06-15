import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About Dagdusheth Ganpati",
          style: GoogleFonts.alef(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent[700],
        elevation: 4.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrangeAccent[700]!,
              Colors.orangeAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Expanded(
            child: ListView(
              children: [
                // About Section
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.temple_hindu, color: Colors.deepOrangeAccent[700]),
                            const SizedBox(width: 10),
                            Text(
                              "About Dagdusheth Halwai Ganpati",
                              style: GoogleFonts.alef(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.deepOrangeAccent[700],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Shreemant Dagdusheth Halwai Sarvajanik Ganpati Trust is one of the most renowned public Ganesh temples in Pune, Maharashtra. Founded by Shreemant Dagdusheth Halwai and his wife Laxmibai in the year 1893, it has become a symbol of devotion, prestige, and social harmony. The temple holds the largest Ganesh idol in the world and attracts lakhs of devotees every year during Ganesh Chaturthi.",
                          style: GoogleFonts.alef(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
            
                // History Section
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.history, color: Colors.deepOrangeAccent[700]),
                            const SizedBox(width: 10),
                            Text(
                              "History of Dagdusheth Ganpati",
                              style: GoogleFonts.alef(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.deepOrangeAccent[700],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Dagdusheth Ganpati started as a small family Ganesh idol in 1893 and, over the years, has grown into one of the largest public celebrations in India. The Ganesh idol is known for its grandeur, adorned with gold and precious stones. The trust has been dedicated to serving society and has been involved in various charitable works, including education, health, and relief work for the underprivileged.",
                          style: GoogleFonts.alef(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
            
                // Social Initiatives Section
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.people, color: Colors.deepOrangeAccent[700]),
                            const SizedBox(width: 10),
                            Text(
                              "Social Initiatives",
                              style: GoogleFonts.alef(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.deepOrangeAccent[700],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "The trust has undertaken numerous social initiatives such as organizing free medical camps, distributing food and clothes to the needy, supporting education programs, and more. It plays an active role in the welfare of society, making a meaningful impact in the lives of many.",
                          style: GoogleFonts.alef(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
            
                // Final Section
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.deepOrangeAccent[700]),
                            const SizedBox(width: 10),
                            Text(
                              "A Symbol of Devotion",
                              style: GoogleFonts.alef(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.deepOrangeAccent[700],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Dagdusheth Ganpati continues to inspire millions of devotees around the world with its ideals of devotion, faith, and community service. Whether it's during Ganesh Chaturthi or at any given time, the temple remains a beacon of positivity and joy for all who visit.",
                          style: GoogleFonts.alef(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.5,
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
    );
  }
}
