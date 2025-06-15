import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Rateus extends StatefulWidget {
  const Rateus({super.key});

  @override
  State<Rateus> createState() => _RateusState();
}

class _RateusState extends State<Rateus> {
  double _rating = 0;
  TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Rate Us",
          style: GoogleFonts.alef(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent[700], // Matching with other screens
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrangeAccent[700]!, // Adjust to match your theme
              Colors.orangeAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // Heading
              Center(
                child: Text(
                  "We'd Love to Hear Your Feedback!",
                  style: GoogleFonts.alef(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Rating Section with stars
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.deepOrangeAccent[700]),
                          SizedBox(width: 10),
                          Text(
                            "Rate Us",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.deepOrangeAccent[700],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      RatingBar.builder(
                        initialRating: _rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 40.0,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star,
                            color: index < _rating
                                ? Colors.deepOrangeAccent[700]
                                : Colors.grey,
                          );
                        },
                        onRatingUpdate: (rating) {
                          setState(() {
                            _rating = rating;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Feedback Section
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.comment, color: Colors.deepOrangeAccent[700]),
                          SizedBox(width: 10),
                          Text(
                            "Your Feedback",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.deepOrangeAccent[700],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _feedbackController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Write your feedback here...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_rating > 0 && _feedbackController.text.isNotEmpty) {
                    // Handle the submission logic (e.g., save the feedback to Firestore)
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          title: Text("Thank You!"),
                          content: Text(
                            "Your feedback has been submitted. We appreciate your input!",
                            style: GoogleFonts.alef(),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "OK",
                                style: GoogleFonts.alef(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent[700],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                 
                ),
                 child: Text(
                  "Submit Feedback",
                  style: GoogleFonts.alef(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
